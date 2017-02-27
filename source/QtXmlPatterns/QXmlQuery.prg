/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QXMLNAME
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QXMLNAMEPOOL
REQUEST QNETWORKACCESSMANAGER
REQUEST QABSTRACTURIRESOLVER
#endif

CLASS QXmlQuery

   DATA pointer
   DATA class_id INIT Class_Id_QXmlQuery
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD bindVariable1
   METHOD bindVariable2
   METHOD bindVariable3
   METHOD bindVariable4
   METHOD bindVariable5
   METHOD bindVariable6
   METHOD bindVariable
   METHOD evaluateTo1
   METHOD evaluateTo2
   METHOD evaluateTo4
   METHOD evaluateTo5
   METHOD evaluateTo
   METHOD initialTemplateName
   METHOD isValid
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD queryLanguage
   METHOD setFocus1
   METHOD setFocus2
   METHOD setFocus3
   METHOD setFocus4
   METHOD setFocus
   METHOD setInitialTemplateName1
   METHOD setInitialTemplateName2
   METHOD setInitialTemplateName
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setQuery1
   METHOD setQuery2
   METHOD setQuery3
   METHOD setQuery
   METHOD setUriResolver
   METHOD uriResolver
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QXmlQuery>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QXmlQuery>
#endif
#endif

/*
QXmlQuery ()
*/
HB_FUNC_STATIC( QXMLQUERY_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlQuery * o = new QXmlQuery (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QXmlQuery ( const QXmlQuery & other )
*/
HB_FUNC_STATIC( QXMLQUERY_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlQuery * par1 = (QXmlQuery *) _qtxhb_itemGetPtr(1);
  QXmlQuery * o = new QXmlQuery ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QXmlQuery ( const QXmlNamePool & np )
*/
HB_FUNC_STATIC( QXMLQUERY_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlNamePool * par1 = (QXmlNamePool *) _qtxhb_itemGetPtr(1);
  QXmlQuery * o = new QXmlQuery ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QXmlQuery ( QueryLanguage queryLanguage, const QXmlNamePool & np = QXmlNamePool() )
*/
HB_FUNC_STATIC( QXMLQUERY_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QXmlNamePool par2 = ISNIL(2)? QXmlNamePool() : *(QXmlNamePool *) _qtxhb_itemGetPtr(2);
  QXmlQuery * o = new QXmlQuery (  (QXmlQuery::QueryLanguage) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlQuery *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QXmlQuery ()
//[2]QXmlQuery ( const QXmlQuery & other )
//[3]QXmlQuery ( const QXmlNamePool & np )
//[4]QXmlQuery ( QueryLanguage queryLanguage, const QXmlNamePool & np = QXmlNamePool() )

HB_FUNC_STATIC( QXMLQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLQUERY(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQXMLNAMEPOOL(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQXMLNAMEPOOL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLQUERY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlQuery * obj = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
void bindVariable ( const QXmlName & name, const QXmlItem & value )
*/
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE1 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qtxhb_itemGetPtr(1);
    QXmlItem * par2 = (QXmlItem *) _qtxhb_itemGetPtr(2);
    obj->bindVariable ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindVariable ( const QXmlName & name, QIODevice * device )
*/
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE2 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qtxhb_itemGetPtr(1);
    QIODevice * par2 = (QIODevice *) _qtxhb_itemGetPtr(2);
    obj->bindVariable ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindVariable ( const QXmlName & name, const QXmlQuery & query )
*/
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE3 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qtxhb_itemGetPtr(1);
    QXmlQuery * par2 = (QXmlQuery *) _qtxhb_itemGetPtr(2);
    obj->bindVariable ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindVariable ( const QString & localName, const QXmlItem & value )
*/
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE4 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QXmlItem * par2 = (QXmlItem *) _qtxhb_itemGetPtr(2);
    obj->bindVariable ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindVariable ( const QString & localName, QIODevice * device )
*/
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE5 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QIODevice * par2 = (QIODevice *) _qtxhb_itemGetPtr(2);
    obj->bindVariable ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void bindVariable ( const QString & localName, const QXmlQuery & query )
*/
HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE6 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QXmlQuery * par2 = (QXmlQuery *) _qtxhb_itemGetPtr(2);
    obj->bindVariable ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void bindVariable ( const QXmlName & name, const QXmlItem & value )
//[2]void bindVariable ( const QXmlName & name, QIODevice * device )
//[3]void bindVariable ( const QXmlName & name, const QXmlQuery & query )
//[4]void bindVariable ( const QString & localName, const QXmlItem & value )
//[5]void bindVariable ( const QString & localName, QIODevice * device )
//[6]void bindVariable ( const QString & localName, const QXmlQuery & query )

HB_FUNC_STATIC( QXMLQUERY_BINDVARIABLE )
{
  if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLITEM(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE1 );
  }
  else if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE2 );
  }
  else if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLQUERY(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQXMLITEM(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE4 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE5 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQXMLQUERY(2) )
  {
    HB_FUNC_EXEC( QXMLQUERY_BINDVARIABLE6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void evaluateTo ( QXmlResultItems * result ) const
*/
HB_FUNC_STATIC( QXMLQUERY_EVALUATETO1 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlResultItems * par1 = (QXmlResultItems *) _qtxhb_itemGetPtr(1);
    obj->evaluateTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool evaluateTo ( QAbstractXmlReceiver * callback ) const
*/
HB_FUNC_STATIC( QXMLQUERY_EVALUATETO2 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractXmlReceiver * par1 = (QAbstractXmlReceiver *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->evaluateTo ( par1 ) );
  }
}

/*
bool evaluateTo ( QString * output ) const
*/
HB_FUNC_STATIC( QXMLQUERY_EVALUATETO4 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->evaluateTo ( &par1 ) );
  }
}

/*
bool evaluateTo ( QIODevice * target ) const
*/
HB_FUNC_STATIC( QXMLQUERY_EVALUATETO5 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->evaluateTo ( par1 ) );
  }
}


//[1]void evaluateTo ( QXmlResultItems * result ) const
//[2]bool evaluateTo ( QAbstractXmlReceiver * callback ) const
//[3]bool evaluateTo ( QStringList * target ) const
//[4]bool evaluateTo ( QString * output ) const
//[5]bool evaluateTo ( QIODevice * target ) const

HB_FUNC_STATIC( QXMLQUERY_EVALUATETO )
{
  if( ISNUMPAR(1) && ISQXMLRESULTITEMS(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO1 );
  }
  else if( ISNUMPAR(1) && ISQABSTRACTXMLRECEIVER(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO2 );
  }
  //else if( ISNUMPAR(1) && ISARRAY(1) )
  //{
  //  HB_FUNC_EXEC( QXMLQUERY_EVALUATETO3 );
  //}
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO4 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_EVALUATETO5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QXmlName initialTemplateName () const
*/
HB_FUNC_STATIC( QXMLQUERY_INITIALTEMPLATENAME )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * ptr = new QXmlName( obj->initialTemplateName (  ) );
    _qt5xhb_createReturnClass ( ptr, "QXMLNAME", true );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QXMLQUERY_ISVALID )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QAbstractMessageHandler * messageHandler () const
*/
HB_FUNC_STATIC( QXMLQUERY_MESSAGEHANDLER )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractMessageHandler * ptr = obj->messageHandler (  );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTMESSAGEHANDLER" );
  }
}


/*
QXmlNamePool namePool () const
*/
HB_FUNC_STATIC( QXMLQUERY_NAMEPOOL )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNamePool * ptr = new QXmlNamePool( obj->namePool (  ) );
    _qt5xhb_createReturnClass ( ptr, "QXMLNAMEPOOL", true );
  }
}


/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC_STATIC( QXMLQUERY_NETWORKACCESSMANAGER )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->networkAccessManager (  );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}


/*
QueryLanguage queryLanguage () const
*/
HB_FUNC_STATIC( QXMLQUERY_QUERYLANGUAGE )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->queryLanguage (  ) );
  }
}


/*
void setFocus ( const QXmlItem & item )
*/
HB_FUNC_STATIC( QXMLQUERY_SETFOCUS1 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlItem * par1 = (QXmlItem *) _qtxhb_itemGetPtr(1);
    obj->setFocus ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setFocus ( const QUrl & documentURI )
*/
HB_FUNC_STATIC( QXMLQUERY_SETFOCUS2 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->setFocus ( *par1 ) );
  }
}

/*
bool setFocus ( QIODevice * document )
*/
HB_FUNC_STATIC( QXMLQUERY_SETFOCUS3 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->setFocus ( par1 ) );
  }
}

/*
bool setFocus ( const QString & focus )
*/
HB_FUNC_STATIC( QXMLQUERY_SETFOCUS4 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->setFocus ( par1 ) );
  }
}


//[1]void setFocus ( const QXmlItem & item )
//[2]bool setFocus ( const QUrl & documentURI )
//[3]bool setFocus ( QIODevice * document )
//[4]bool setFocus ( const QString & focus )

HB_FUNC_STATIC( QXMLQUERY_SETFOCUS )
{
  if( ISNUMPAR(1) && ISQXMLITEM(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS1 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS2 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETFOCUS4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setInitialTemplateName ( const QXmlName & name )
*/
HB_FUNC_STATIC( QXMLQUERY_SETINITIALTEMPLATENAME1 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qtxhb_itemGetPtr(1);
    obj->setInitialTemplateName ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInitialTemplateName ( const QString & localName )
*/
HB_FUNC_STATIC( QXMLQUERY_SETINITIALTEMPLATENAME2 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setInitialTemplateName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setInitialTemplateName ( const QXmlName & name )
//[2]void setInitialTemplateName ( const QString & localName )

HB_FUNC_STATIC( QXMLQUERY_SETINITIALTEMPLATENAME )
{
  if( ISNUMPAR(1) && ISQXMLNAME(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETINITIALTEMPLATENAME1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETINITIALTEMPLATENAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMessageHandler ( QAbstractMessageHandler * aMessageHandler )
*/
HB_FUNC_STATIC( QXMLQUERY_SETMESSAGEHANDLER )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractMessageHandler * par1 = (QAbstractMessageHandler *) _qtxhb_itemGetPtr(1);
    obj->setMessageHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkAccessManager ( QNetworkAccessManager * newManager )
*/
HB_FUNC_STATIC( QXMLQUERY_SETNETWORKACCESSMANAGER )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkAccessManager * par1 = (QNetworkAccessManager *) _qtxhb_itemGetPtr(1);
    obj->setNetworkAccessManager ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQuery ( QIODevice * sourceCode, const QUrl & documentURI = QUrl() )
*/
HB_FUNC_STATIC( QXMLQUERY_SETQUERY1 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qtxhb_itemGetPtr(2);
    obj->setQuery ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuery ( const QUrl & queryURI, const QUrl & baseURI = QUrl() )
*/
HB_FUNC_STATIC( QXMLQUERY_SETQUERY2 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qtxhb_itemGetPtr(2);
    obj->setQuery ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuery ( const QString & sourceCode, const QUrl & documentURI = QUrl() )
*/
HB_FUNC_STATIC( QXMLQUERY_SETQUERY3 )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qtxhb_itemGetPtr(2);
    obj->setQuery ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setQuery ( QIODevice * sourceCode, const QUrl & documentURI = QUrl() )
//[2]void setQuery ( const QUrl & queryURI, const QUrl & baseURI = QUrl() )
//[3]void setQuery ( const QString & sourceCode, const QUrl & documentURI = QUrl() )

HB_FUNC_STATIC( QXMLQUERY_SETQUERY )
{
  if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETQUERY1 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETQUERY2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLQUERY_SETQUERY3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setUriResolver ( const QAbstractUriResolver * resolver )
*/
HB_FUNC_STATIC( QXMLQUERY_SETURIRESOLVER )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractUriResolver * par1 = (QAbstractUriResolver *) _qtxhb_itemGetPtr(1);
    obj->setUriResolver ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QAbstractUriResolver * uriResolver () const
*/
HB_FUNC_STATIC( QXMLQUERY_URIRESOLVER )
{
  QXmlQuery * obj = (QXmlQuery *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAbstractUriResolver * ptr = obj->uriResolver (  );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTURIRESOLVER" );
  }
}



HB_FUNC_STATIC( QXMLQUERY_NEWFROM )
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

HB_FUNC_STATIC( QXMLQUERY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QXMLQUERY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLQUERY_NEWFROM );
}

HB_FUNC_STATIC( QXMLQUERY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLQUERY_SETSELFDESTRUCTION )
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