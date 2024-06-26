rule log4jJndiLookup {
  meta:
    author = "Tim Brown @timb_machine"
    description = "Hunts for references to Log4J JndiLookup"
    version = "1.0"
    creation_date = "2021-12-13"
    modification_date = "2021-12-15"
    classification = "TLP:WHITE"
  strings:
    $jndilookup = "JndiLookup"
  condition:
    $jndilookup
}
rule log4jball {
  meta:
    author = "Tim Brown @timb_machine"
    description = "Hunts for references to Log4J balls"
    version = "1.1"
    creation_date = "2021-12-12"
    modification_date = "2021-12-15"
    classification = "TLP:WHITE"
  strings:
    $ballsrc = "PLACEHOLDER-STRING-TARBALL-MATCHES-NOT-POSSIBLE"
    $ballbin = "PLACEHOLDER-STRING-TARBALL-MATCHES-NOT-POSSIBLE"
    $balljar = "META-INF/log4j-provider.xml"
  condition:
    $ballsrc or $ballbin or $balljar
}
rule log4jimport {
  meta:
    author = "Tim Brown @timb_machine"
    description = "Hunts for references to Log4J imports"
    version = "1.0"
    creation_date = "2021-12-12"
    modification_date = "2021-12-15"
    classification = "TLP:WHITE"
  strings:
    $importjava = /import\w+org\.apache\.logging\.log4j/
    $importivy = /<dependency\w+org="org\.apache\.logging\.log4j"/
    $importmaven = /<groupId>.{1,128}log4j/
    $importgradle = /compile\w+group:\w*'org\.apache\.logging\.log4j'/
  condition:
   $importjava or $importivy or $importmaven or $importgradle
}
rule log4jjavaclass {
  meta:
    author = "Tim Brown @timb_machine"
    description = "Hunts for references to Log4J java in class form"
    version = "1.0"
    creation_date = "2021-12-12"
    modification_date = "2021-12-15"
    classification = "TLP:WHITE"
  strings:
    $javaclass = "org/apache/logging/log4j"
  condition:
    $javaclass
}
rule log4jjavasrc {
  meta:
    author = "Tim Brown @timb_machine"
    description = "Hunts for references to Log4J java in source form"
    version = "1.0"
    creation_date = "2021-12-12"
    modification_date = "2021-12-15"
    classification = "TLP:WHITE"
  strings:
    $javasrc = "org.apache.logging.log4j"
  condition:
    $javasrc
}
