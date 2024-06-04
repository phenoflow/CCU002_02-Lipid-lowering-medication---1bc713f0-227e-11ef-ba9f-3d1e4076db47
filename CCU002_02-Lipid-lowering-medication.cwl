cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  ccu002_02-lipid-lowering-medication-200mg---primary:
    run: ccu002_02-lipid-lowering-medication-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  docosahexaenoic-ccu002_02-lipid-lowering-medication---primary:
    run: docosahexaenoic-ccu002_02-lipid-lowering-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-200mg---primary/output
  ccu002_02-lipid-lowering-medication-100mg---primary:
    run: ccu002_02-lipid-lowering-medication-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: docosahexaenoic-ccu002_02-lipid-lowering-medication---primary/output
  ccu002_02-lipid-lowering-medication-colestid---primary:
    run: ccu002_02-lipid-lowering-medication-colestid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-100mg---primary/output
  ccu002_02-lipid-lowering-medication-625mg---primary:
    run: ccu002_02-lipid-lowering-medication-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-colestid---primary/output
  ccu002_02-lipid-lowering-medication-suspension---primary:
    run: ccu002_02-lipid-lowering-medication-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-625mg---primary/output
  ccu002_02-lipid-lowering-medication-bezalip---primary:
    run: ccu002_02-lipid-lowering-medication-bezalip---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-suspension---primary/output
  ccu002_02-lipid-lowering-medication-180mg---primary:
    run: ccu002_02-lipid-lowering-medication-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-bezalip---primary/output
  ccu002_02-lipid-lowering-medication-fluvastatin---primary:
    run: ccu002_02-lipid-lowering-medication-fluvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-180mg---primary/output
  ccu002_02-lipid-lowering-medication-pravastatin---primary:
    run: ccu002_02-lipid-lowering-medication-pravastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-fluvastatin---primary/output
  ccu002_02-lipid-lowering-medication-granule---primary:
    run: ccu002_02-lipid-lowering-medication-granule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-pravastatin---primary/output
  ccu002_02-lipid-lowering-medication-250mg---primary:
    run: ccu002_02-lipid-lowering-medication-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-granule---primary/output
  ccu002_02-lipid-lowering-medication-lescol---primary:
    run: ccu002_02-lipid-lowering-medication-lescol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-250mg---primary/output
  ccu002_02-lipid-lowering-medication-bezafibrate---primary:
    run: ccu002_02-lipid-lowering-medication-bezafibrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-lescol---primary/output
  ccu002_02-lipid-lowering-medication-repatha---primary:
    run: ccu002_02-lipid-lowering-medication-repatha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-bezafibrate---primary/output
  ccu002_02-lipid-lowering-medication-160mg---primary:
    run: ccu002_02-lipid-lowering-medication-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-repatha---primary/output
  ccu002_02-lipid-lowering-medication-micro---primary:
    run: ccu002_02-lipid-lowering-medication-micro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-160mg---primary/output
  ccu002_02-lipid-lowering-medication-rosuvastatin---primary:
    run: ccu002_02-lipid-lowering-medication-rosuvastatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-micro---primary/output
  ccu002_02-lipid-lowering-medication-400mg---primary:
    run: ccu002_02-lipid-lowering-medication-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-rosuvastatin---primary/output
  ccu002_02-lipid-lowering-medication-300mg---primary:
    run: ccu002_02-lipid-lowering-medication-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-400mg---primary/output
  ccu002_02-lipid-lowering-medication-150mg---primary:
    run: ccu002_02-lipid-lowering-medication-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-300mg---primary/output
  ccu002_02-lipid-lowering-medication-colestipol---primary:
    run: ccu002_02-lipid-lowering-medication-colestipol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-150mg---primary/output
  ccu002_02-lipid-lowering-medication-145mg---primary:
    run: ccu002_02-lipid-lowering-medication-145mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-colestipol---primary/output
  ccu002_02-lipid-lowering-medication-lipitor---primary:
    run: ccu002_02-lipid-lowering-medication-lipitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-145mg---primary/output
  ccu002_02-lipid-lowering-medication-lipostat---primary:
    run: ccu002_02-lipid-lowering-medication-lipostat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-lipitor---primary/output
  ccu002_02-lipid-lowering-medication-capsule---primary:
    run: ccu002_02-lipid-lowering-medication-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-lipostat---primary/output
  ccu002_02-lipid-lowering-medication-colestyramine---primary:
    run: ccu002_02-lipid-lowering-medication-colestyramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-capsule---primary/output
  ccu002_02-lipid-lowering-medication-praluent---primary:
    run: ccu002_02-lipid-lowering-medication-praluent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-colestyramine---primary/output
  nicotinic-ccu002_02-lipid-lowering-medication---primary:
    run: nicotinic-ccu002_02-lipid-lowering-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-praluent---primary/output
  ccu002_02-lipid-lowering-medication-simvador---primary:
    run: ccu002_02-lipid-lowering-medication-simvador---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: nicotinic-ccu002_02-lipid-lowering-medication---primary/output
  ccu002_02-lipid-lowering-medication-syringe---primary:
    run: ccu002_02-lipid-lowering-medication-syringe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-simvador---primary/output
  ccu002_02-lipid-lowering-medication-solution---primary:
    run: ccu002_02-lipid-lowering-medication-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-syringe---primary/output
  ccu002_02-lipid-lowering-medication-600mg---primary:
    run: ccu002_02-lipid-lowering-medication-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-solution---primary/output
  ccu002_02-lipid-lowering-medication-questran---primary:
    run: ccu002_02-lipid-lowering-medication-questran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-600mg---primary/output
  bempedoic-ccu002_02-lipid-lowering-medication---primary:
    run: bempedoic-ccu002_02-lipid-lowering-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-questran---primary/output
  ccu002_02-lipid-lowering-medication-crestor---primary:
    run: ccu002_02-lipid-lowering-medication-crestor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: bempedoic-ccu002_02-lipid-lowering-medication---primary/output
  chewable-ccu002_02-lipid-lowering-medication---primary:
    run: chewable-ccu002_02-lipid-lowering-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-crestor---primary/output
  ccu002_02-lipid-lowering-medication-alirocumab---primary:
    run: ccu002_02-lipid-lowering-medication-alirocumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: chewable-ccu002_02-lipid-lowering-medication---primary/output
  ccu002_02-lipid-lowering-medication-gemfibrozil---primary:
    run: ccu002_02-lipid-lowering-medication-gemfibrozil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-alirocumab---primary/output
  ccu002_02-lipid-lowering-medication-evolocumab---primary:
    run: ccu002_02-lipid-lowering-medication-evolocumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-gemfibrozil---primary/output
  ccu002_02-lipid-lowering-medication-zocor---primary:
    run: ccu002_02-lipid-lowering-medication-zocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-evolocumab---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ccu002_02-lipid-lowering-medication-zocor---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
