# Use a specific OpenJDK version
FROM eclipse-temurin:21-jdk-alpine

# Set the working directory inside the container
WORKDIR /javaapp

# Copy the Java source file into the container
COPY helloworld.java .

# Compile the Java program
RUN javac helloworld.java

# Set the default command to run the Java program
CMD ["java", "helloworld"]
