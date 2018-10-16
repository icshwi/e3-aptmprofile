require aptmprofile,develop

epicsEnvSet("LOC", "LOC")

epicsEnvSet("ACQB", "AMC1")
dbLoadRecords(FitsParams.db, "P=$(LOC):, ACQB=$(ACQB):")
dbLoadRecords(dbFakePVs.db, "P=$(LOC):, ACQB=$(ACQB):")
dbLoadRecords(dbProfileCalc.db, "P=$(LOC):, ACQB=$(ACQB):")

#epicsEnvSet("ACQB", "AMC2")
#dbLoadRecords(FitsParams.db, "P=$(LOC):, ACQB=$(ACQB):")
#dbLoadRecords(dbFakePVs.db, "P=$(LOC):, ACQB=$(ACQB):")
#dbLoadRecords(dbProfileCalc.db, "P=$(LOC):, ACQB=$(ACQB):")

