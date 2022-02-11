package com.techshop.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import com.techshop.entities.VaiTro;
import com.techshop.repository.VaiTroRepository;

@Component
public class DataSeeder implements ApplicationListener<ContextRefreshedEvent> {


	@Autowired
	private VaiTroRepository roleRepository;


	@Override
	public void onApplicationEvent(ContextRefreshedEvent arg0) {
		// vai tro
		if (roleRepository.findByTenVaiTro("ROLE_ADMIN") == null) {
			roleRepository.save(new VaiTro("ROLE_ADMIN"));
		}

		if (roleRepository.findByTenVaiTro("ROLE_MEMBER") == null) {
			roleRepository.save(new VaiTro("ROLE_MEMBER"));
		}
		
		if (roleRepository.findByTenVaiTro("ROLE_SHIPPER") == null) {
			roleRepository.save(new VaiTro("ROLE_SHIPPER"));
		}

	}
}
