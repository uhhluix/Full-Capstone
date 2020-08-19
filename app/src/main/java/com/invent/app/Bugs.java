package com.invent.app;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


	@Entity
	@Table(name="Bugs")
	public class Bugs {
		
		
		public Bugs() {
		}
		
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private Long id;
		private String name;
		private String severity;
		private String image; 
		private String description;
		private String bugSubmitter;
		private String status;
		
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public String getBugSubmitter() {
			return bugSubmitter;
		}
		public void setBugSubmitter(String bugSubmitter) {
			this.bugSubmitter = bugSubmitter;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getSeverity() {
			return severity;
		}
		public void setSeverity(String severity) {
			this.severity = severity;
		}
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public void ifPresent(Object object) {
			// TODO Auto-generated method stub
			
		}
 
	
	
	
	
	
	}

