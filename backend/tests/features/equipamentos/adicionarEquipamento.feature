Feature: As a usuario administrador
  I want to adicionar um equipamento ao banco de dados
  So that eu posso armazenar todos os recusros de uma sala

  Scenario: Adicionando equipamento usando patrimonio com sucesso
    Given não existe o equipamento "Ar condicionado midea" com "patrimonio" "1098642"
    When eu recebo uma requisição "/POST" do usuario "joao" logado como "admistrador"
    And "nome" com "Ar condicionado midea"
    And "descricao" com "Ar condicionado split de 12.000 btus"
    And "estado de conservacao" com "Bom"
    And "data de aquisicao" com "15/03/2023"
    And "valor estimado" com "R$ 1.200,00"
    And "patrimonio" com "1098642"
    Then o equipamento "Ar condicionado midea" com "patrimonio" "1098642" está no banco de dados

