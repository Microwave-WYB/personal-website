#show heading: set text(font: "Linux Biolinum")
#show link: underline

#set page(
  margin: (x: 0.9cm, y: 1.3cm),
)

#set par(justify: true)

#let chiline() = {v(-3pt); line(length: 100%); v(-5pt)}

= Yibo Wei

y2wei\@ucsd.edu | (+1) 858-642-5282 |
#link("https://github.com/Microwave-WYB")[github.com/Microwave-WYB] |
#link("https://linkedin.com/in/yibo-wei-05616322a")[LinkedIn] |
9500 Gilman Drive

== Education
#chiline()

*University of California, San Diego* #h(1fr) Sept. 2023 to Present \
Ph.D. in Computer Science and Engineering #h(1fr) La Jolla, CA

*University of California, San Diego* #h(1fr) Sept. 2019 to June 2023 \
B.S. in Computer Science and Engineering #h(1fr) La Jolla, CA

== Skills
#chiline()

*Languages:* Python, C/C++, Kotlin, TypeScript, Rust, Shell

*Backend Stack:* FastAPI, Docker, Redis, PostgreSQL, CI/CD, SQLModel, Android Development

*Systems & Security:* Reverse Engineering, Vulnerability Assessment, BLE Security, Protocol Design, Network Engineering

== Research Experience
#chiline()

I am a PhD student specializing in systems and security research. My work focuses on developing scalable infrastructures for security analysis. I have extensive experience in back-end service development, mobile development, and security vulnerability assessment. My technical expertise includes reverse engineering embedded systems, automated security testing, and full-stack research infrastructure development. I am particularly interested in the intersection of mobile sensing, distributed computing, and security analysis.

*Security Research & Vulnerability Assessment: Automotive Systems* #h(1fr) Oct. 2024 \
- Led comprehensive critical security research on automotive Bluetooth Low Energy (BLE) systems, uncovering multiple high-severity vulnerabilities that could affect millions of vehicles worldwide
- Leveraged advanced skill set in reverse engineering, static code analysis, Python, C\#, and BLE protocol analysis to develop specialized security assessment tools and methodologies
- Engineered custom binary analysis framework for .NET applications streamlining the security assessment process
- Discovered and documented critical authentication bypass vulnerabilities through systematic protocol analysis, potentially preventing unauthorized vehicle access
- Engineered proof-of-concept Python CLI tool that successfully demonstrated critical authentication vulnerabilities, enabling unauthorized vehicle access through BLE protocol exploitation
- Authored comprehensive technical documentation and remediation strategies, facilitating responsible disclosure.

== Projects
#chiline()

*Python API for Apple Geolocation Service* #h(1fr) May 2024 \
#link("https://github.com/Microwave-WYB/gsloc")[github.com/Microwave-WYB/gsloc] \
- Reverse engineered Apple's internal geolocation API and developed an open-source Python wrapper, enabling programmatic access to WiFi access point location data via BSSID queries
- Engineered robust protocol parsing using *ProtoBuf*, ensuring reliable data serialization and API compatibility
- Automated deployment pipeline using GitHub Actions for seamless *PyPI* distribution
- Maintained comprehensive documentation and example code, facilitating easy integration for third-party developers

*Scalable Audio Processing Infrastructure: Bird Species Identification* #h(1fr) Mar. 2024 to June 2024 \
#link("https://github.com/Microwave-WYB/phone-sensors")[github.com/Microwave-WYB/phone-sensors] \
- Architected and implemented a production-grade platform for collecting, processing and analyzing bird call audio data
- Designed highly reliable backend using *FastAPI*, *Redis*, and *PostgreSQL* with 99.9% uptime since deployment
- Implemented comprehensive monitoring ensuring stable 24/7 operation
- Developed efficient async processing pipeline for audio analysis with automated error recovery
- Orchestrated containerized deployment using *Docker*, maintaining consistent performance in production environment

*Security Research Infrastructure Engineer: BLE/Mobile Security* #h(1fr) Feb. 2024 to Present \
- Architected and implemented comprehensive BLE security scanning infrastructure managing 2,676,640 BLE advertisements globally, enabling vulnerability research that led to discovery of multiple vulnerabilities
- Developed resilient backend architecture leveraging *FastAPI*, *SQLModel*, and *PostgreSQL*, with *Redis Queue* for asynchronous processing, containerized with *Docker*, and CI/CD pipeline with *GitHub Actions*
- Built high-availability system with 99.99% uptime since deployment
- Engineered real-time analytics dashboard visualizing critical security metrics, device relationships, and threat patterns
- Pioneered novel algorithms for mapping BLE device-to-application relationships
- Implemented application-level encryption between API server and client applications to ensure data security independent of cloud storage

*Embedded System Design: Motion-Aware BLE Tracker* #h(1fr) Fall 2023 \
- Designed and implemented power-efficient *BLE* tag prototype inspired by Apple AirTag architecture
- Built hardware system integrating *STM32* microcontroller with gyroscope sensor through *I2C* interface and BLE module
- Engineered adaptive BLE broadcasting algorithm triggered by motion state, optimizing for both findability and power efficiency
- Achieved 74mA power consumption through careful power management and state transitions
- Awarded 1st place in class competition for exceptional power efficiency metrics

*High-Performance IP Router Implementation* #h(1fr) Sept. 2022 to March 2023 \
- Architected and implemented a high-performance network router in *C*
- Engineered an optimized longest prefix matching algorithm
- Secured 1st place in competitive performance evaluation among 100+ implementations
- Received the #link("https://cns.ucsd.edu/cns-espresso-prize-for-excellence-in-networking-3/")[George Varghese UCSD CSE Espresso Award]
