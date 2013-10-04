---
title: October MongoDB User Group
author: FrancescaK
layout: post
event-name: October MongoDB User Group
event-allday: false
event-start: 2013-22-11 19:00:00
event-end: 2013-10-11 21:00:00
event-website: http://www.meetup.com/New-York-MongoDB-User-Group/
tags:
- user-group
- mongodb
- big-data
---

Avery Rosen, MongoDB expert will be the headline speaker at our next MUG. We'll also have Dmitry from GridGain do a demo of their In-Memory Accelerator for MongoDB. 

We all know MongoDB is great for Big Data, but it's also great for work on the other end of the scale -- call it "Wee Data". This type of data is far more common than Big Data scenarios... in fact, just about every project starts with it. In this domain, we don't care about disk access and indices; instead, we care about skipping past the wheel inventing and getting right down to playing with the data. MongoDB lets you persist your prototype or small-working-set data without making you deal with freeze-drying and reconstitution, provides structure well beyond csv, gets out of your way as you evolve your schemas, and provides simple tools for introspecting data and crunching numbers. 

"MongoDB and Wee Data: Hacking a Workflow" will start with theory and proceed to walk through ruby code that shows MongoDB's place in a working ecommerce site's data ecosystem. On display: An ETL workflow, with persistence 

• import CSVs for updates to persistent data 

• run aggregation to answer business questions 

• merge external documents into DB, for workflow phase decoupling run validation 

• export to CSV for upload elsewhere Also on display: BDD style workflow 

• Cucumber features -RSpec specs

GridGain for MongoDB

If you have a medium to large-scale MongoDB deployment, and want to enhance scale and/or a realize more real-time performance, this session is for you. GridGain that brings in-memory capabilities to MongoDB, the most popular API for unstructured data storage and query. We will discuss how you can achieve elastic scale (think automatic transparent re-sharding) up to thousands of nodes, as well as dramatically improve performance: higher throughput and lower latency via concurrent locking and parallel read/write operations. We will discuss various options around choosing databases or collections to keep in memory, synchronous and asynchronous persistence, vertical scale with terabytes of off-heap memory, Visor GUI-based management and monitoring, and much more.