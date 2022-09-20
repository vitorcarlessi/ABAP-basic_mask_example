*======================================================================*
*                                                                      *
*                          Inetum Consulting                           *
*                                                                      *
*======================================================================*
* Programa...: ZR_MASK_TEST                                            *
* Módulo.....:                                                         *
* Descrição..: Basic CNPJ Mask                                         *
*----------------------------------------------------------------------*
* Autor......: Vitor Crepaldi Carlessi                                 *
* Data.......: 19.09.2022                                              *
*----------------------------------------------------------------------*
* Última modificação:                                                  *
* Nº Request | Data       | Modificado Por | Motivo                    *
*----------------------------------------------------------------------*
*            |             | Vitor Carlessi | Desenv. Inicial          *
*======================================================================*
REPORT zr_mask_test.

*----------------------------------------------------------------------*
*              Tela de seleção                                         *
*----------------------------------------------------------------------*
PARAMETERS: p_cnpj TYPE char14.

START-OF-SELECTION.
  PERFORM: f_show_cnpj.

*&---------------------------------------------------------------------*
*&      Form  F_SHOW_CNPJ
*&---------------------------------------------------------------------*
FORM f_show_cnpj.
*----------------------------------------------------------------*
* Variáveis                                                      *
*----------------------------------------------------------------*
  DATA: lv_cnpj TYPE char18.

  "Recebe números de CNPJ
  lv_cnpj = p_cnpj.

  "Usa Máscara de CNPJ para colocar pontos e traço na variável
  WRITE lv_cnpj USING EDIT MASK '__.___.___.____-__' TO lv_cnpj.

  "Exibe valor de CNPJ em tela
  WRITE: lv_cnpj.

ENDFORM.