default['scp_solr']['solr811'] = {
  'java_path' => 'C:/Program Files/Java/jre1.8.0_151',
  'solr_path' => 'C:/tools/solr-8.1.1',
  'chocolatey_packages_options' => {
    'jre8' => {
      'version' => '8.0.151',
      'elevated' => true,
    },
    'solr' => {
      'version' => '8.1.1',
      'elevated' => true,
    },
    'nssm' => {
      'elevated' => true,
    },
  },
  'services_options' => {
    'SOLR' => {
      'program' => 'C:/tools/solr-8.1.1/bin/solr.cmd',
      'args' => 'start -f -p 8983',
      'parameters' => {
        'DisplayName' => 'Solr 8.1.1',
        'Description' => 'Solr 8.1.1 on port 8983',
        'Start' => 'SERVICE_AUTO_START',
      },
    },
  },
}
