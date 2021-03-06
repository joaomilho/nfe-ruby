#coding: utf-8

require 'nfe/entidades/entidade_nfe'

module NFe

#elemento transp da nfe
  class Transporte < EntidadeNFe

    nfe_attr :modFrete

    nfe_attr :transportadora_simples

    nfe_attr :retTransp

    #ou veicTransp e reboque
    nfe_attr :veicTransp, :reboque

    #ou vagao
    nfe_attr :vagao

    #ou balsa
    nfe_attr :balsa

    def attributes
      @attributes = {
          'modFrete' => modFrete,
          'transporta' => transportadora_simples.to_nfe_format,
          'retTransp' => retTransp.to_nfe_format,
          'veicTransp' => veicTransp,
          'reboque' => reboque,
          'vagao' => vagao,
          'balsa' => balsa
      }
    end

    def modfrete=(valor)
      if MODALIDADES_FRETE.include? valor
        @modFrete = valor
      else
        raise "Modalidade de frete não existente"
      end
    end

  end

end
