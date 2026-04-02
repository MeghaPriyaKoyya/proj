import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /proj on httpDefaultListener {
    resource function get greet() returns error|json {
        do {
            return "Hello World";
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

}
