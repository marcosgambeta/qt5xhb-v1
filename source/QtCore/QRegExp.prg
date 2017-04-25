/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

CLASS QRegExp

   DATA pointer
   //DATA class_id INIT Class_Id_QRegExp
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cap
   METHOD captureCount
   METHOD capturedTexts
   METHOD caseSensitivity
   METHOD errorString
   METHOD exactMatch
   METHOD indexIn
   METHOD isEmpty
   METHOD isMinimal
   METHOD isValid
   METHOD lastIndexIn
   METHOD matchedLength
   METHOD pattern
   METHOD patternSyntax
   METHOD pos
   METHOD setCaseSensitivity
   METHOD setMinimal
   METHOD setPattern
   METHOD setPatternSyntax
   METHOD escape

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRegExp
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRegExp>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRegExp>
#endif

#include <QStringList>

/*
QRegExp ()
*/
void QRegExp_new1 ()
{
  QRegExp * o = new QRegExp (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
*/
void QRegExp_new2 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = ISNIL(2)? (int) Qt::CaseSensitive : hb_parni(2);
  int par3 = ISNIL(3)? (int) QRegExp::RegExp : hb_parni(3);
  QRegExp * o = new QRegExp ( par1,  (Qt::CaseSensitivity) par2,  (QRegExp::PatternSyntax) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegExp ( const QRegExp & rx )
*/
void QRegExp_new3 ()
{
  QRegExp * par1 = (QRegExp *) _qt5xhb_itemGetPtr(1);
  QRegExp * o = new QRegExp ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QRegExp ()
//[2]QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
//[3]QRegExp ( const QRegExp & rx )

HB_FUNC_STATIC( QREGEXP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRegExp_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QRegExp_new2();
  }
  else if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QRegExp_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGEXP_DELETE )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString cap ( int nth = 0 ) const
*/
HB_FUNC_STATIC( QREGEXP_CAP )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      hb_retc( (const char *) obj->cap ( (int) ISNIL(1)? 0 : hb_parni(1) ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int captureCount () const
*/
HB_FUNC_STATIC( QREGEXP_CAPTURECOUNT )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->captureCount (  ) );
  }
}

/*
QStringList capturedTexts () const
*/
HB_FUNC_STATIC( QREGEXP_CAPTUREDTEXTS )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->capturedTexts (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
Qt::CaseSensitivity caseSensitivity () const
*/
HB_FUNC_STATIC( QREGEXP_CASESENSITIVITY )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->caseSensitivity (  ) );
  }
}

/*
QString errorString () const
*/
HB_FUNC_STATIC( QREGEXP_ERRORSTRING )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}

/*
bool exactMatch ( const QString & str ) const
*/
HB_FUNC_STATIC( QREGEXP_EXACTMATCH )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retl( obj->exactMatch ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int indexIn ( const QString & str, int offset = 0, CaretMode caretMode = CaretAtZero ) const
*/
HB_FUNC_STATIC( QREGEXP_INDEXIN )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      int par3 = ISNIL(3)? (int) QRegExp::CaretAtZero : hb_parni(3);
      hb_retni( obj->indexIn ( par1, (int) ISNIL(2)? 0 : hb_parni(2),  (QRegExp::CaretMode) par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QREGEXP_ISEMPTY )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}

/*
bool isMinimal () const
*/
HB_FUNC_STATIC( QREGEXP_ISMINIMAL )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isMinimal (  ) );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QREGEXP_ISVALID )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}

/*
int lastIndexIn ( const QString & str, int offset = -1, CaretMode caretMode = CaretAtZero ) const
*/
HB_FUNC_STATIC( QREGEXP_LASTINDEXIN )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      int par3 = ISNIL(3)? (int) QRegExp::CaretAtZero : hb_parni(3);
      hb_retni( obj->lastIndexIn ( par1, (int) ISNIL(2)? -1 : hb_parni(2),  (QRegExp::CaretMode) par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int matchedLength () const
*/
HB_FUNC_STATIC( QREGEXP_MATCHEDLENGTH )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->matchedLength (  ) );
  }
}

/*
QString pattern () const
*/
HB_FUNC_STATIC( QREGEXP_PATTERN )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->pattern (  ).toLatin1().data() );
  }
}

/*
PatternSyntax patternSyntax () const
*/
HB_FUNC_STATIC( QREGEXP_PATTERNSYNTAX )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->patternSyntax (  ) );
  }
}

/*
int pos ( int nth = 0 ) const
*/
HB_FUNC_STATIC( QREGEXP_POS )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      hb_retni( obj->pos ( (int) ISNIL(1)? 0 : hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCaseSensitivity ( Qt::CaseSensitivity cs )
*/
HB_FUNC_STATIC( QREGEXP_SETCASESENSITIVITY )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setCaseSensitivity (  (Qt::CaseSensitivity) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimal ( bool minimal )
*/
HB_FUNC_STATIC( QREGEXP_SETMINIMAL )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setMinimal ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPattern ( const QString & pattern )
*/
HB_FUNC_STATIC( QREGEXP_SETPATTERN )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      obj->setPattern ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPatternSyntax ( PatternSyntax syntax )
*/
HB_FUNC_STATIC( QREGEXP_SETPATTERNSYNTAX )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setPatternSyntax (  (QRegExp::PatternSyntax) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QString escape ( const QString & str )
*/
HB_FUNC_STATIC( QREGEXP_ESCAPE )
{
  if( ISCHAR(1) )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) QRegExp::escape ( par1 ).toLatin1().data() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGEXP_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QREGEXP_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREGEXP_NEWFROM );
}

HB_FUNC_STATIC( QREGEXP_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREGEXP_NEWFROM );
}

HB_FUNC_STATIC( QREGEXP_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QREGEXP_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
