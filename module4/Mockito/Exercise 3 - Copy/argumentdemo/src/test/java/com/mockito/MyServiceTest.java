package com.mockito;

import org.junit.jupiter.api.Test;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;

public class MyServiceTest {

    @Test
    public void testArgumentMatching() {

        // Create Mock Object
        ExternalApi mockApi = mock(ExternalApi.class);

        // Create Service
        MyService service = new MyService(mockApi);

        // Call Method with Argument
        service.fetchData("101");

        // Verify using Argument Matcher
        verify(mockApi).getData(anyString());
    }
}