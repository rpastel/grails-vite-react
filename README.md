# Example integrating Grails and React Apps using Vite
This example project demonstrates integrating Grails and React apps using Vite. It uses
```
Grails version: 5.3.3 profile: web
JVM version: 1.8.0_392

Gradle version: 7.2
Groovy version: 3.0.8
Node Grade Plugin version: 7.0.2
Node version: 18.17.1

Vite version: 5.0.8 template: react
React version: 18.2.0
```
## Installation
Clone this repository.
## Usage
### Development
Open terminal in project root, and enter
```
./gradlew bootRun
```
Open another terminal in project root, and enter\
```
./gradlew dev
```
In a browser navigate to `localhost:8080/grailsvitereact`.
### Production
To create a war file for deployment, enter
```
./gradlew assemble
```
Find the war file in `build/libs/grailsvitereact.war`. Run the war by entering
```
java -jar build/libs/grailsvitereact.war
```
## References
- [Grails documentation](https://docs.grails.org/5.3.3/guide/single.html
- [Grails Asset-Pipeline documentation](http://www.asset-pipeline.com/manual/index.html) especially see [configuration](http://www.asset-pipeline.com/manual/index.html#configuration)
- [Gradle documentation](https://docs.gradle.org/7.2/userguide/userguide.html)
- [Node Gradle Plugin repository](https://github.com/node-gradle/gradle-node-plugin?tab=readme-ov-file)
- [Vite guide](https://vitejs.dev/guide/), especially see [backend intergeration](https://vitejs.dev/guide/backend-integration.html), [plugin ordering documentation](https://vitejs.dev/guide/api-plugin.html#plugin-ordering)
- [Rollup tutorial](https://rollupjs.org/tutorial/), especially see [using configuration](https://rollupjs.org/tutorial/#using-config-files) for [input](https://rollupjs.org/configuration-options/#input) and [out-entry file naming](https://rollupjs.org/configuration-options/#output-entryfilenames)
- [Rollup Image Plugin repository](https://github.com/rollup/plugins/tree/master/packages/image)
- Finally the [React documentation](https://react.dev/learn)
