package org.llin.demo.northwind.data.util;

import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;

import org.llin.demo.northwind.data.ApplicationContextProvider;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.core.io.Resource;
//400671017
public class CustomSSLContext {
    
	@Value("${server.ssl.trust-store}")
	private String trustStore;
			
	@Value("${server.ssl.key-store-password}")
	private String password;
		
	public SSLContext getSSLContext() throws NoSuchAlgorithmException {

		// Create an SSLContext with the custom TrustManager
		SSLContext sslContext = SSLContext.getInstance("TLS");
		
		try {
			ApplicationContext applicationContext = ApplicationContextProvider.getApplicationContext();

			Resource resourceTS = applicationContext.getResource(trustStore);

			// Load the custom trustStore
			KeyStore keyStore = KeyStore.getInstance("JKS");

			keyStore.load(resourceTS.getInputStream(), password.toCharArray());

			// Create a TrustManagerFactory and initialize it with the keyStore
			TrustManagerFactory trustManagerFactory = TrustManagerFactory
					.getInstance(TrustManagerFactory.getDefaultAlgorithm());
			trustManagerFactory.init(keyStore);

			sslContext.init(null, trustManagerFactory.getTrustManagers(), null);
		} catch (KeyStoreException | CertificateException | IOException | KeyManagementException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return sslContext;
	}

	public String getTrustStore() {
		return trustStore;
	}

	public void setTrustStore(String trustStore) {
		this.trustStore = trustStore;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
