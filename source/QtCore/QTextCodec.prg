/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QTEXTDECODER
REQUEST QTEXTENCODER
#endif

CLASS QTextCodec

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD canEncode
   METHOD toUnicode
   METHOD fromUnicode
   METHOD makeDecoder
   METHOD makeEncoder
   METHOD name
   METHOD aliases
   METHOD mibEnum
   METHOD codecForName
   METHOD codecForMib
   METHOD availableCodecs
   METHOD availableMibs
   METHOD codecForLocale
   METHOD setCodecForLocale
   METHOD codecForHtml
   METHOD codecForUtfText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextCodec
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextCodec>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextCodec>
#endif

/*
bool canEncode(QChar) const
*/
void QTextCodec_canEncode1 ()
{
  QTextCodec * obj = (QTextCodec *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QChar * par1 = (QChar *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->canEncode ( *par1 ) );
  }
}

/*
bool canEncode(const QString&) const
*/
void QTextCodec_canEncode2 ()
{
  QTextCodec * obj = (QTextCodec *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->canEncode ( PQSTRING(1) ) );
  }
}

//[1]bool canEncode(QChar) const
//[2]bool canEncode(const QString&) const

HB_FUNC_STATIC( QTEXTCODEC_CANENCODE )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QTextCodec_canEncode1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_canEncode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString toUnicode(const QByteArray&) const
*/
void QTextCodec_toUnicode1 ()
{
  QTextCodec * obj = (QTextCodec *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toUnicode ( *PQBYTEARRAY(1) ) );
  }
}

/*
QString toUnicode(const char* chars) const
*/
void QTextCodec_toUnicode2 ()
{
  QTextCodec * obj = (QTextCodec *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toUnicode ( PCONSTCHAR(1) ) );
  }
}

//[1]QString toUnicode(const QByteArray&) const
//[2]QString toUnicode(const char* chars) const
//[3]QString toUnicode(const char *in, int length, ConverterState *state = 0) const // TODO: implementar(?)

HB_FUNC_STATIC( QTEXTCODEC_TOUNICODE )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_toUnicode1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_toUnicode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray fromUnicode(const QString& uc) const
*/
void QTextCodec_fromUnicode1 ()
{
  QTextCodec * obj = (QTextCodec *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->fromUnicode ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

//[1]QByteArray fromUnicode(const QString& uc) const
//[2]QByteArray fromUnicode(const QChar *in, int length, ConverterState *state = 0) const // TODO: implementar(?)

HB_FUNC_STATIC( QTEXTCODEC_FROMUNICODE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_fromUnicode1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextDecoder* makeDecoder(ConversionFlags flags = DefaultConversion) const
*/
HB_FUNC_STATIC( QTEXTCODEC_MAKEDECODER )
{
  QTextCodec * obj = (QTextCodec *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QTextCodec::DefaultConversion : hb_parni(1);
      QTextDecoder * ptr = obj->makeDecoder ( (QTextCodec::ConversionFlags) par1 );
      _qt5xhb_createReturnClass ( ptr, "QTEXTDECODER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTextEncoder* makeEncoder(ConversionFlags flags = DefaultConversion) const
*/
HB_FUNC_STATIC( QTEXTCODEC_MAKEENCODER )
{
  QTextCodec * obj = (QTextCodec *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QTextCodec::DefaultConversion : hb_parni(1);
      QTextEncoder * ptr = obj->makeEncoder ( (QTextCodec::ConversionFlags) par1 );
      _qt5xhb_createReturnClass ( ptr, "QTEXTENCODER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QByteArray name() const = 0
*/
HB_FUNC_STATIC( QTEXTCODEC_NAME )
{
  QTextCodec * obj = (QTextCodec *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->name () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
virtual QList<QByteArray> aliases() const
*/
HB_FUNC_STATIC( QTEXTCODEC_ALIASES )
{
  QTextCodec * obj = (QTextCodec *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QByteArray> list = obj->aliases ();
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
virtual int mibEnum() const = 0
*/
HB_FUNC_STATIC( QTEXTCODEC_MIBENUM )
{
  QTextCodec * obj = (QTextCodec *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->mibEnum () );
  }
}

/*
static QTextCodec* codecForName(const QByteArray &name)
*/
void QTextCodec_codecForName1 ()
{
  QTextCodec * ptr = QTextCodec::codecForName ( *PQBYTEARRAY(1) );
  _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}

/*
static QTextCodec* codecForName(const char *name)
*/
void QTextCodec_codecForName2 ()
{
  QTextCodec * ptr = QTextCodec::codecForName ( PCONSTCHAR(1) );
  _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}

//[1]static QTextCodec* codecForName(const QByteArray &name)
//[2]static QTextCodec* codecForName(const char *name)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORNAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForName1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_codecForName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextCodec* codecForMib(int mib)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORMIB )
{
  if( ISNUM(1) )
  {
    QTextCodec * ptr = QTextCodec::codecForMib ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QList<QByteArray> availableCodecs()
*/
HB_FUNC_STATIC( QTEXTCODEC_AVAILABLECODECS )
{
  QList<QByteArray> list = QTextCodec::availableCodecs ();
  PHB_DYNS pDynSym;
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static QList<int> availableMibs()
*/
HB_FUNC_STATIC( QTEXTCODEC_AVAILABLEMIBS )
{
  QList<int> list = QTextCodec::availableMibs ();
  _qt5xhb_convert_qlist_int_to_array ( list );
}

/*
static QTextCodec* codecForLocale()
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORLOCALE )
{
  QTextCodec * ptr = QTextCodec::codecForLocale ();
  _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}

/*
static void setCodecForLocale(QTextCodec *c)
*/
HB_FUNC_STATIC( QTEXTCODEC_SETCODECFORLOCALE )
{
  if( ISQTEXTCODEC(1) )
  {
    QTextCodec * par1 = (QTextCodec *) _qt5xhb_itemGetPtr(1);
    QTextCodec::setCodecForLocale ( par1 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextCodec *codecForHtml(const QByteArray &ba)
*/
void QTextCodec_codecForHtml1 ()
{
  QTextCodec * ptr = QTextCodec::codecForHtml ( *PQBYTEARRAY(1) );
  _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}

/*
static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)
*/
void QTextCodec_codecForHtml2 ()
{
  QTextCodec * ptr = QTextCodec::codecForHtml ( *PQBYTEARRAY(1), PQTEXTCODEC(2) );
  _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}

//[1]static QTextCodec *codecForHtml(const QByteArray &ba)
//[2]static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForHtml1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    QTextCodec_codecForHtml2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextCodec *codecForUtfText(const QByteArray &ba)
*/
void QTextCodec_codecForUtfText1 ()
{
  QTextCodec * ptr = QTextCodec::codecForUtfText ( *PQBYTEARRAY(1) );
  _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}

/*
static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)
*/
void QTextCodec_codecForUtfText2 ()
{
  QTextCodec * ptr = QTextCodec::codecForUtfText ( *PQBYTEARRAY(1), PQTEXTCODEC(2) );
  _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}

//[1]static QTextCodec *codecForUtfText(const QByteArray &ba)
//[2]static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORUTFTEXT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForUtfText1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    QTextCodec_codecForUtfText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTCODEC_NEWFROM )
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

HB_FUNC_STATIC( QTEXTCODEC_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTCODEC_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCODEC_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTCODEC_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCODEC_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTCODEC_SETSELFDESTRUCTION )
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
