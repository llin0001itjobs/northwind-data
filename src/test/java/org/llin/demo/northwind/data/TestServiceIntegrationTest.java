package org.llin.demo.northwind.data;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.hamcrest.Matchers.containsString;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;

@SpringBootTest
@AutoConfigureMockMvc // This allows us to inject MockMvc
@ActiveProfiles("test")
class TestServiceIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    void testEntityManagerConnection() throws Exception {
        mockMvc.perform(get("/api/test"))
               .andExpect(status().isOk()) // Check if status is 200
               .andExpect(content().string(containsString("EntityManager"))); // Check content
    }
}
