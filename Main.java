package com.main;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.model.Admin;
import com.model.Hangar;
import com.model.Manager;
import com.model.Pilot;
import com.model.Plane;

@Transactional
public class Main {

	public static void main(String[] args) {

		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("com/config/hibernate.cfg.xml")
				.build();
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();
		SessionFactory factory = meta.getSessionFactoryBuilder().build();
		Session session = factory.openSession();
		Admin admin = new Admin();
		admin.setAdminFirstName("serina");
		admin.setAdminLastName("williams");
		admin.setAdminAge(25);
		admin.setAdminContactNumber(321);
		admin.setAdminGender("female");
		admin.setAdminPassword("serina123");
		session.save(admin);
		Manager manager = new Manager();
		manager.setManagerFirstName("suresh");
		manager.setManagerLastName("raina");
		manager.setManagerGender("male");
		manager.setManagerAge(29);
		manager.setManagerContactNumber(789);
		manager.setManagerPassword("dora");
		session.save(manager);
		Plane plane = new Plane();
		plane.setPlaneName("Boeing");
		Hangar hangar = new Hangar();
		hangar.setPlane(plane);
		hangar.setHangarLocation("1A");
		Pilot pilot = new Pilot();
		pilot.setPilotName("suganya");
		pilot.setPilotLocation("coimbatore");
		pilot.setPlane(plane);
		session.save(plane);
		session.save(pilot);
		session.save(hangar);
	}

}
