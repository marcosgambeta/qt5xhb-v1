/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

CLASS QTextListFormat INHERIT QTextFormat

   //DATA class_id INIT Class_Id_QTextListFormat
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setStyle
   METHOD style
   METHOD setIndent
   METHOD indent
   METHOD setNumberPrefix
   METHOD numberPrefix
   METHOD setNumberSuffix
   METHOD numberSuffix

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextListFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextListFormat>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextListFormat>
#endif

/*
QTextListFormat()
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_NEW )
{
  QTextListFormat * o = new QTextListFormat (  );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTEXTLISTFORMAT_DELETE )
{
  QTextListFormat * obj = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_ISVALID )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
void setStyle(Style style)
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETSTYLE )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStyle (  (QTextListFormat::Style) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Style style() const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_STYLE )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->style (  ) );
  }
}


/*
void setIndent(int indent)
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETINDENT )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIndent ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int indent() const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_INDENT )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->indent (  ) );
  }
}


/*
void setNumberPrefix(const QString &numberPrefix)
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETNUMBERPREFIX )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setNumberPrefix ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString numberPrefix() const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_NUMBERPREFIX )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->numberPrefix (  ).toLatin1().data() );
  }
}


/*
void setNumberSuffix(const QString &numberSuffix)
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETNUMBERSUFFIX )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setNumberSuffix ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString numberSuffix() const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_NUMBERSUFFIX )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->numberSuffix (  ).toLatin1().data() );
  }
}



#pragma ENDDUMP
