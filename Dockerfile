FROM java:7
WORKDIR /home/root/javahelloworld
#COPY ./ ./
COPY src src
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
# basta un entrypoint eseguirà solo il primo
RUN echo "test"
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
