from driverConstants import *
from driverExplicit import ExplicitAnalysis
import driverUtils, sys
options = {
    'SIMExt':'.sim',
    'ams':OFF,
    'analysisType':EXPLICIT,
    'applicationName':'analysis',
    'aqua':OFF,
    'beamSectGen':OFF,
    'biorid':OFF,
    'cavityTypes':[],
    'cavparallel':OFF,
    'complexFrequency':OFF,
    'contact':OFF,
    'cosimulation':OFF,
    'coupledProcedure':OFF,
    'cse':OFF,
    'cyclicSymmetryModel':OFF,
    'directCyclic':OFF,
    'domains':1,
    'dsa':OFF,
    'dynamic':OFF,
    'filPrt':[],
    'fils':[],
    'finitesliding':OFF,
    'foundation':OFF,
    'geostatic':OFF,
    'geotech':OFF,
    'heatTransfer':OFF,
    'importer':OFF,
    'importerParts':OFF,
    'includes':['knee_bolster_ef1.inp', 'knee_bolster_ef2.inp', 'knee_bolster_ef3.inp'],
    'initialConditionsFile':OFF,
    'input':'knee_bolster',
    'inputFormat':INP,
    'interactive':None,
    'job':'knee_bolster',
    'keyword_licenses':[],
    'lanczos':OFF,
    'libs':[],
    'magnetostatic':OFF,
    'massDiffusion':OFF,
    'modifiedTet':OFF,
    'moldflowFiles':[],
    'moldflowMaterial':OFF,
    'mp_mode':THREADS,
    'multiphysics':OFF,
    'noDmpDirect':[],
    'noMultiHost':[],
    'noMultiHostElemLoop':[],
    'noStdParallel':[],
    'no_domain_check':1,
    'outputKeywords':ON,
    'parallel':DOMAIN,
    'parallel_odb':SINGLE,
    'parameterized':OFF,
    'partsAndAssemblies':OFF,
    'parval':OFF,
    'postOutput':OFF,
    'preDecomposition':OFF,
    'restart':OFF,
    'restartEndStep':OFF,
    'restartIncrement':0,
    'restartStep':0,
    'restartWrite':ON,
    'rezone':OFF,
    'runCalculator':OFF,
    'scratch':'.',
    'soils':OFF,
    'soliter':OFF,
    'solverTypes':['DIRECT'],
    'staticNonlinear':OFF,
    'steadyStateTransport':OFF,
    'step':ON,
    'subGen':OFF,
    'subGenLibs':[],
    'subGenTypes':[],
    'submodel':OFF,
    'substrLibDefs':OFF,
    'substructure':OFF,
    'symmetricModelGeneration':OFF,
    'thermal':OFF,
    'tmpdir':'.',
    'tracer':OFF,
    'visco':OFF,
}
analysis = ExplicitAnalysis(options)
status = analysis.run()
sys.exit(status)
