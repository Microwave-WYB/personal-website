import { about } from "./components/about.js";
import { projects } from "./components/projects.js";
import { resume } from "./components/resume.js";
import { blogs } from "./components/blogs.js";
import { contact } from "./components/contact.js";

let main_box = document.getElementById('main-box');
main_box.innerHTML = about;
let details = document.getElementById('master-details');

main_box.addEventListener("click", function(event) {
	switch(event.target.id){
		case "resume-button":
			details.innerHTML = resume;
			details.classList.add("show");
			download_button = document.getElementById('download-button');
			download_button.addEventListener("click", function(event) {
				window.open("./src/components/resume.pdf", "_blank");
			});
			break;
		case "projects-button":
			details.innerHTML = projects;
			details.classList.add("show");
			let projects_box = document.getElementById('projects_box');
			let worldscanner_details = document.getElementById('worldscanner-details');
			projects_box.addEventListener("click", function(event) {
				switch(event.target.id){
					case "worldscanner-demo":
						// open worldsanner demo in new tab
						window.open("./src/components/worldscanner_demo.html", "_blank");
						break;
				}
			});
			break;
		case "blogs-button":
			details.innerHTML = blogs;
			details.classList.add("show");
			break;
		case "contact-button":
			details.innerHTML = contact;
			details.classList.add("show");
			break;
	}
});
