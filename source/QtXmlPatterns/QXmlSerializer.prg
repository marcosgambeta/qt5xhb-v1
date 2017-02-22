/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTCODEC
REQUEST QIODEVICE

CLASS QXmlSerializer INHERIT QAbstractXmlReceiver

   DATA class_id INIT Class_Id_QXmlSerializer
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD codec
   METHOD outputDevice
   METHOD setCodec
   METHOD atomicValue
   METHOD attribute
   METHOD characters
   METHOD comment
   METHOD endDocument
   METHOD endElement
   METHOD endOfSequence
   METHOD namespaceBinding
   METHOD processingInstruction
   METHOD startDocument
   METHOD startElement
   METHOD startOfSequence
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlSerializer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QXmlSerializer>
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
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QXmlSerializer>
#endif
#endif

/*
QXmlSerializer ( const QXmlQuery & query, QIODevice * outputDevice )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlQuery * par1 = (QXmlQuery *) _qtxhb_itemGetPtr(1);
  QIODevice * par2 = (QIODevice *) _qtxhb_itemGetPtr(2);
  QXmlSerializer * o = new QXmlSerializer ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlSerializer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QXMLSERIALIZER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QTextCodec * codec () const
*/
HB_FUNC_STATIC( QXMLSERIALIZER_CODEC )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTextCodec * ptr = obj->codec (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
}


/*
QIODevice * outputDevice () const
*/
HB_FUNC_STATIC( QXMLSERIALIZER_OUTPUTDEVICE )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->outputDevice (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
void setCodec ( const QTextCodec * outputCodec )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_SETCODEC )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTextCodec * par1 = (const QTextCodec *) _qtxhb_itemGetPtr(1);
    obj->setCodec ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void atomicValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ATOMICVALUE )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    obj->atomicValue ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void attribute ( const QXmlName & name, const QStringRef & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ATTRIBUTE )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qtxhb_itemGetPtr(1);
    QStringRef * par2 = (QStringRef *) _qtxhb_itemGetPtr(2);
    obj->attribute ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void characters ( const QStringRef & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_CHARACTERS )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringRef * par1 = (QStringRef *) _qtxhb_itemGetPtr(1);
    obj->characters ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void comment ( const QString & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_COMMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->comment ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endDocument ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ENDDOCUMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endDocument (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endElement ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ENDELEMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endElement (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endOfSequence ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ENDOFSEQUENCE )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endOfSequence (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void namespaceBinding ( const QXmlName & nb )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_NAMESPACEBINDING )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qtxhb_itemGetPtr(1);
    obj->namespaceBinding ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void processingInstruction ( const QXmlName & name, const QString & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_PROCESSINGINSTRUCTION )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    obj->processingInstruction ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startDocument ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_STARTDOCUMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startDocument (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startElement ( const QXmlName & name )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_STARTELEMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qtxhb_itemGetPtr(1);
    obj->startElement ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startOfSequence ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_STARTOFSEQUENCE )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startOfSequence (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
