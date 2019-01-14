#########################################################################                                                          
#       This WDL script calls the Mutect WDL Task                      ##

#########################################################################

import "MayomicsVC/src/wdl/SomaticVC/Tasks/mutect.wdl" as STRELKA

workflow CallMutectTask {

   call STRELKA.mutectTask as mutect

   output {
      File MutectVcfBgz = mutect.OutputVcfBgz
      File MutectVcfBgzTbi = mutect.OutputVcfBgzTbi
   }

}

