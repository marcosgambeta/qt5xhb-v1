/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QDOMATTR
REQUEST QDOMCDATASECTION
REQUEST QDOMCOMMENT
REQUEST QDOMDOCUMENTFRAGMENT
REQUEST QDOMELEMENT
REQUEST QDOMENTITYREFERENCE
REQUEST QDOMPROCESSINGINSTRUCTION
REQUEST QDOMTEXT
REQUEST QDOMDOCUMENTTYPE
REQUEST QDOMNODELIST
REQUEST QDOMIMPLEMENTATION
REQUEST QDOMNODE
REQUEST QBYTEARRAY
#endif

CLASS QDomDocument INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomDocument
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD createAttribute
   METHOD createAttributeNS
   METHOD createCDATASection
   METHOD createComment
   METHOD createDocumentFragment
   METHOD createElement
   METHOD createElementNS
   METHOD createEntityReference
   METHOD createProcessingInstruction
   METHOD createTextNode
   METHOD doctype
   METHOD documentElement
   METHOD elementById
   METHOD elementsByTagName
   METHOD elementsByTagNameNS
   METHOD implementation
   METHOD importNode
   METHOD nodeType
   METHOD setContent
   METHOD toByteArray
   METHOD toString
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDomDocument>
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
#include <QDomDocument>
#endif

/*
QDomDocument ()
*/
HB_FUNC_STATIC( QDOMDOCUMENT_NEW1 )
{
  QDomDocument * o = new QDomDocument (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QDomDocument ( const QString & name )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_NEW2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QDomDocument * o = new QDomDocument ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QDomDocument ( const QDomDocumentType & doctype )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_NEW3 )
{
  QDomDocumentType * par1 = (QDomDocumentType *) _qt5xhb_itemGetPtr(1);
  QDomDocument * o = new QDomDocument ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QDomDocument ( const QDomDocument & x )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_NEW4 )
{
  QDomDocument * par1 = (QDomDocument *) _qt5xhb_itemGetPtr(1);
  QDomDocument * o = new QDomDocument ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QDomDocument ()
//[2]QDomDocument ( const QString & name )
//[3]QDomDocument ( const QDomDocumentType & doctype )
//[4]QDomDocument ( const QDomDocument & x )

HB_FUNC_STATIC( QDOMDOCUMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMDOCUMENT_DELETE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDomAttr createAttribute ( const QString & name )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEATTRIBUTE )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomAttr * ptr = new QDomAttr( obj->createAttribute ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
QDomAttr createAttributeNS ( const QString & nsURI, const QString & qName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEATTRIBUTENS )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDomAttr * ptr = new QDomAttr( obj->createAttributeNS ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
QDomCDATASection createCDATASection ( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATECDATASECTION )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomCDATASection * ptr = new QDomCDATASection( obj->createCDATASection ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMCDATASECTION", true );
  }
}


/*
QDomComment createComment ( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATECOMMENT )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomComment * ptr = new QDomComment( obj->createComment ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMCOMMENT", true );
  }
}


/*
QDomDocumentFragment createDocumentFragment ()
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEDOCUMENTFRAGMENT )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomDocumentFragment * ptr = new QDomDocumentFragment( obj->createDocumentFragment (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMDOCUMENTFRAGMENT", true );
  }
}


/*
QDomElement createElement ( const QString & tagName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEELEMENT )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomElement * ptr = new QDomElement( obj->createElement ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
  }
}


/*
QDomElement createElementNS ( const QString & nsURI, const QString & qName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEELEMENTNS )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDomElement * ptr = new QDomElement( obj->createElementNS ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
  }
}


/*
QDomEntityReference createEntityReference ( const QString & name )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEENTITYREFERENCE )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomEntityReference * ptr = new QDomEntityReference( obj->createEntityReference ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMENTITYREFERENCE", true );
  }
}


/*
QDomProcessingInstruction createProcessingInstruction ( const QString & target, const QString & data )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEPROCESSINGINSTRUCTION )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDomProcessingInstruction * ptr = new QDomProcessingInstruction( obj->createProcessingInstruction ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMPROCESSINGINSTRUCTION", true );
  }
}


/*
QDomText createTextNode ( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATETEXTNODE )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomText * ptr = new QDomText( obj->createTextNode ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMTEXT", true );
  }
}


/*
QDomDocumentType doctype () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_DOCTYPE )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomDocumentType * ptr = new QDomDocumentType( obj->doctype (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMDOCUMENTTYPE", true );
  }
}


/*
QDomElement documentElement () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_DOCUMENTELEMENT )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomElement * ptr = new QDomElement( obj->documentElement (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
  }
}


/*
QDomElement elementById ( const QString & elementId )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTBYID )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomElement * ptr = new QDomElement( obj->elementById ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
  }
}


/*
QDomNodeList elementsByTagName ( const QString & tagname ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTSBYTAGNAME )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagName ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODELIST", true );
  }
}


/*
QDomNodeList elementsByTagNameNS ( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTSBYTAGNAMENS )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagNameNS ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODELIST", true );
  }
}


/*
QDomImplementation implementation () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_IMPLEMENTATION )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomImplementation * ptr = new QDomImplementation( obj->implementation (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMIMPLEMENTATION", true );
  }
}


/*
QDomNode importNode ( const QDomNode & importedNode, bool deep )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_IMPORTNODE )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNode * par1 = (QDomNode *) _qt5xhb_itemGetPtr(1);
    QDomNode * ptr = new QDomNode( obj->importNode ( *par1, (bool) hb_parl(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODE", true );
  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_NODETYPE )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType (  ) );
  }
}



//[1]bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[2]bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[3]bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[4]bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[5]bool setContent ( const QString & text, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[6]bool setContent ( const QByteArray & buffer, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[7]bool setContent ( QIODevice * dev, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[8]bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )

// TODO: implementar função
HB_FUNC_STATIC( QDOMDOCUMENT_SETCONTENT )
{
}

/*
QByteArray toByteArray ( int indent = 1 ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_TOBYTEARRAY )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toByteArray ( (int) ISNIL(1)? 1 : hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QString toString ( int indent = 1 ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_TOSTRING )
{
  QDomDocument * obj = (QDomDocument *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString ( (int) ISNIL(1)? 1 : hb_parni(1) ).toLatin1().data() );
  }
}



#pragma ENDDUMP
