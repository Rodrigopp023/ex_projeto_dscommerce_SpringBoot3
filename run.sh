echo "Cleaning and compiling the project..."
mvn clean compile

if [ $? -eq 0 ]; then
    echo "Compilation successful!"
    echo "Running the application..."
    java -cp target/classes:$(mvn dependency:build-classpath -Dmdep.outputFile=/dev/stdout -q -DincludeScope=runtime) com.exproject.dscommerce.DscommerceApplication
else
    echo "Compilation failed."
fi

