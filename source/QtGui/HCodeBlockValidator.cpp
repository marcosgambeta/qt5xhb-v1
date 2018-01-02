/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HCodeBlockValidator.h"

HCodeBlockValidator::HCodeBlockValidator(QObject *parent) :
    QValidator(parent)
{
  block = NULL;
}

HCodeBlockValidator::HCodeBlockValidator(PHB_ITEM codeblock, QObject *parent) :
    QValidator(parent)
{
  block = hb_itemNew( codeblock );
}

HCodeBlockValidator::~HCodeBlockValidator ()
{
  if( block )
  {
    hb_itemRelease( block );
    block = NULL;
  }
}

QValidator::State HCodeBlockValidator::validate ( QString & input, int & pos ) const
{
  /*
    executa o codeblock de validação
  */
  PHB_ITEM pInput = hb_itemPutC( NULL, input.toLatin1().data() );
  PHB_ITEM pPos = hb_itemPutNI( NULL, pos );
  PHB_ITEM pRet = hb_vmEvalBlockV( block, 2, pInput, pPos );
  hb_itemRelease( pInput );
  hb_itemRelease( pPos );
  /*
    processa o resultado armazenado em pRet {cString,nPos,nState}
  */
  PHB_ITEM pTemp1 = hb_arrayGetItemPtr( pRet, 1 );
  char * str = hb_itemGetC( pTemp1 );
  #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  input = QLatin1String( str );
  #else
  input = str;
  #endif
  hb_itemFreeC(str);
  PHB_ITEM pTemp2 = hb_arrayGetItemPtr(pRet,2);
  pos = hb_itemGetNI( pTemp2 );
  PHB_ITEM pTemp3 = hb_arrayGetItemPtr(pRet,3);
  int state = hb_itemGetNI( pTemp3 );
  return (QValidator::State) state;
  hb_itemRelease( pTemp1 );
  hb_itemRelease( pTemp2 );
  hb_itemRelease( pTemp3 );
  /*
    libera item
  */
  hb_itemRelease( pRet );
}

void HCodeBlockValidator::fixup( QString & input ) const
{
}
