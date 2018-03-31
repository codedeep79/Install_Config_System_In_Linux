## 1. Introduce Apache Spark
**Apache Spark** is an open-source, fast, and general-purpose cluster computing system.

It was developed in response to the limitations in the **MapReduce** cluster computing paradigm found in **Apache Hadoop**.

Some key components of **Apache Spark** include **Spark Core, Spark SQL, Spark Streaming, MLlib, GraphX, Cluster Managers.**

+ **Spark Core:**

`Spark Core contains components for task scheduling, memory management, fault recovery, and is home to the API that defines RDDs, which are Spark's main programming abstraction. RDDs (Resilient Distributed Dataset) represent a collection of items distributed across many compute notes that can be manipulated in parallel. `
+ **Spark SQL:**

`Spark SQL allows for working with unstructured data.`

+ **Spark Streaming:**

`Spark Streaming allows for processing of live streams of data.`

+ **MLlib:**

`MLlib is a Spark machine learning library that comes with a variety of machine learning algorithms, including classification, regression, clustering, collaborative filtering and more.`

+ **GraphX:**

`GraphX is a library for manipulating graphs and performing graph-parallel computations.`

+ **Cluster Managers:**

`Spark can scale from one to any number of compute nodes. To accomplish this, Spark can run on a variety of cluster managers, including Hadoop YARN, Apache Mesos, as well as the Spark Standalone Scheduler.`


## 2. Install Apache Spark 

### Step 1: Download file [SetupSpark.sh](https://github.com/flightstar/Installer-Package-In-Linux/blob/master/SetupSpark.sh)

Open terminal: `sudo ./SetupSpark.sh `

### Step 2: Run Apache Spark
The Spark API is available in either Python or Scala.

### Spark API via Python
`To access the Spark API with Python, start PySpark. For this, enter into your terminal:`

```
pyspark
```

`Now you can interact with the Spark API by entering Python commands. Let's try a simple word-count example:`

```
>>> lines = sc.textFile("README.md")
>>> lines.count()
>>> lines.first()
```

Congratulations. You have successfully setup Apache Spark on your system, and are ready to get more sophisticated with your own distributed computing jobs. To continue learning, check out the [official Apache Spark documentation](http://spark.apache.org/docs/latest/quick-start.html).
