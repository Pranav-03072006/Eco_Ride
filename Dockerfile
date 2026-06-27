# Use eclipse-temurin 8 image to compile the Java source files
FROM eclipse-temurin:8-jdk-jammy AS build
WORKDIR /app
COPY . .

# Ensure classes directory exists
RUN mkdir -p web/WEB-INF/classes

# Compile the Java classes directly into the web/WEB-INF/classes folder
# We use the jar files in web/WEB-INF/lib for the classpath
RUN javac -d web/WEB-INF/classes -cp "web/WEB-INF/lib/*" $(find src/java -name "*.java")

# Copy non-java resource files (e.g. hibernate.cfg.xml, struts.xml, etc.) from src/java to the classes directory
RUN cd src/java && tar cf - --exclude="*.java" . | (cd ../../web/WEB-INF/classes && tar xf -)

# Use a Tomcat 9 image to serve the application
FROM tomcat:9.0-jre8-slim

# Remove the default ROOT application provided by Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy our compiled web directory into the Tomcat webapps/ROOT directory
COPY --from=build /app/web /usr/local/tomcat/webapps/ROOT

# Expose the default Tomcat port
EXPOSE 8080

# Force Java to prefer IPv6 addresses to fix Supabase Direct Connection on Render
ENV CATALINA_OPTS="-Djava.net.preferIPv6Addresses=true -Djava.net.preferIPv4Stack=false"

# Start Tomcat
CMD ["catalina.sh", "run"]
