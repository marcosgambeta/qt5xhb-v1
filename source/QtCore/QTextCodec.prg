/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QTEXTDECODER
REQUEST QTEXTENCODER
#endif

CLASS QTextCodec

   DATA pointer
   DATA class_id INIT Class_Id_QTextCodec
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD canEncode1
   METHOD canEncode2
   METHOD canEncode
   METHOD toUnicode1
   METHOD toUnicode2
   METHOD toUnicode
   METHOD fromUnicode1
   METHOD fromUnicode
   METHOD makeDecoder
   METHOD makeEncoder
   METHOD name
   METHOD aliases
   METHOD mibEnum
   METHOD codecForName1
   METHOD codecForName2
   METHOD codecForName
   METHOD codecForMib
   METHOD availableCodecs
   METHOD availableMibs
   METHOD codecForLocale
   METHOD setCodecForLocale
   METHOD codecForHtml1
   METHOD codecForHtml2
   METHOD codecForHtml
   METHOD codecForUtfText1
   METHOD codecForUtfText2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextCodec>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextCodec>
#endif
#endif



/*
bool canEncode(QChar) const
*/
HB_FUNC_STATIC( QTEXTCODEC_CANENCODE1 )
{
  QTextCodec * obj = (QTextCodec *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * par1 = (QChar *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->canEncode ( *par1 ) );
  }
}

/*
bool canEncode(const QString&) const
*/
HB_FUNC_STATIC( QTEXTCODEC_CANENCODE2 )
{
  QTextCodec * obj = (QTextCodec *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->canEncode ( par1 ) );
  }
}


//[1]bool canEncode(QChar) const
//[2]bool canEncode(const QString&) const

HB_FUNC_STATIC( QTEXTCODEC_CANENCODE )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CANENCODE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CANENCODE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString toUnicode(const QByteArray&) const
*/
HB_FUNC_STATIC( QTEXTCODEC_TOUNICODE1 )
{
  QTextCodec * obj = (QTextCodec *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    hb_retc( (const char *) obj->toUnicode ( *par1 ).toLatin1().data() );
  }
}

/*
QString toUnicode(const char* chars) const
*/
HB_FUNC_STATIC( QTEXTCODEC_TOUNICODE2 )
{
  QTextCodec * obj = (QTextCodec *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retc( (const char *) obj->toUnicode (  (const char *) par1 ).toLatin1().data() );
  }
}



//[1]QString toUnicode(const QByteArray&) const
//[2]QString toUnicode(const char* chars) const
//[3]QString toUnicode(const char *in, int length, ConverterState *state = 0) const

HB_FUNC_STATIC( QTEXTCODEC_TOUNICODE )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_TOUNICODE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_TOUNICODE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray fromUnicode(const QString& uc) const
*/
HB_FUNC_STATIC( QTEXTCODEC_FROMUNICODE1 )
{
  QTextCodec * obj = (QTextCodec *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QByteArray * ptr = new QByteArray( obj->fromUnicode ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}



//[1]QByteArray fromUnicode(const QString& uc) const
//[2]QByteArray fromUnicode(const QChar *in, int length, ConverterState *state = 0) const

HB_FUNC_STATIC( QTEXTCODEC_FROMUNICODE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_FROMUNICODE1 );
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
  QTextCodec * obj = (QTextCodec *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QTextCodec::DefaultConversion : hb_parni(1);
    QTextDecoder * ptr = obj->makeDecoder (  (QTextCodec::ConversionFlags) par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDECODER" );
  }
}


/*
QTextEncoder* makeEncoder(ConversionFlags flags = DefaultConversion) const
*/
HB_FUNC_STATIC( QTEXTCODEC_MAKEENCODER )
{
  QTextCodec * obj = (QTextCodec *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QTextCodec::DefaultConversion : hb_parni(1);
    QTextEncoder * ptr = obj->makeEncoder (  (QTextCodec::ConversionFlags) par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTENCODER" );
  }
}


/*
virtual QByteArray name() const = 0
*/
HB_FUNC_STATIC( QTEXTCODEC_NAME )
{
  QTextCodec * obj = (QTextCodec *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->name (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
virtual QList<QByteArray> aliases() const
*/
HB_FUNC_STATIC( QTEXTCODEC_ALIASES )
{
  QTextCodec * obj = (QTextCodec *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> list = obj->aliases (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    #endif
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
  QTextCodec * obj = (QTextCodec *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mibEnum (  ) );
  }
}


/*
static QTextCodec* codecForName(const QByteArray &name)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORNAME1 )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QTextCodec * ptr = QTextCodec::codecForName ( *par1 );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}

/*
static QTextCodec* codecForName(const char *name)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORNAME2 )
{
  const char * par1 = hb_parc(1);
  QTextCodec * ptr = QTextCodec::codecForName (  (const char *) par1 );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


//[1]static QTextCodec* codecForName(const QByteArray &name)
//[2]static QTextCodec* codecForName(const char *name)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORNAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORNAME1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORNAME2 );
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
  QTextCodec * ptr = QTextCodec::codecForMib ( (int) hb_parni(1) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


/*
static QList<QByteArray> availableCodecs()
*/
HB_FUNC_STATIC( QTEXTCODEC_AVAILABLECODECS )
{
  QList<QByteArray> list = QTextCodec::availableCodecs (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  #endif
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
  QList<int> list = QTextCodec::availableMibs (  );
  _qtxhb_convert_qlist_int_to_array ( list );
}


/*
static QTextCodec* codecForLocale()
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORLOCALE )
{
  QTextCodec * ptr = QTextCodec::codecForLocale (  );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


/*
static void setCodecForLocale(QTextCodec *c)
*/
HB_FUNC_STATIC( QTEXTCODEC_SETCODECFORLOCALE )
{
  QTextCodec * par1 = (QTextCodec *) _qtxhb_itemGetPtr(1);
  QTextCodec::setCodecForLocale ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



/*
static QTextCodec *codecForHtml(const QByteArray &ba)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORHTML1 )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QTextCodec * ptr = QTextCodec::codecForHtml ( *par1 );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}

/*
static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORHTML2 )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QTextCodec * par2 = (QTextCodec *) _qtxhb_itemGetPtr(2);
  QTextCodec * ptr = QTextCodec::codecForHtml ( *par1, par2 );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


//[1]static QTextCodec *codecForHtml(const QByteArray &ba)
//[2]static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORHTML1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORHTML2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextCodec *codecForUtfText(const QByteArray &ba)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORUTFTEXT1 )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QTextCodec * ptr = QTextCodec::codecForUtfText ( *par1 );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}

/*
static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORUTFTEXT2 )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QTextCodec * par2 = (QTextCodec *) _qtxhb_itemGetPtr(2);
  QTextCodec * ptr = QTextCodec::codecForUtfText ( *par1, par2 );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


//[1]static QTextCodec *codecForUtfText(const QByteArray &ba)
//[2]static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORUTFTEXT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORUTFTEXT1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORUTFTEXT2 );
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
