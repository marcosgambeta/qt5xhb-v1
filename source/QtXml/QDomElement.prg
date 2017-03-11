/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMATTR
REQUEST QDOMNAMEDNODEMAP
REQUEST QDOMNODELIST
#endif

CLASS QDomElement INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomElement
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD attribute
   METHOD attributeNS
   METHOD attributeNode
   METHOD attributeNodeNS
   METHOD attributes
   METHOD elementsByTagName
   METHOD elementsByTagNameNS
   METHOD hasAttribute
   METHOD hasAttributeNS
   METHOD nodeType
   METHOD removeAttribute
   METHOD removeAttributeNS
   METHOD removeAttributeNode
   METHOD setAttribute1
   METHOD setAttribute2
   METHOD setAttribute3
   METHOD setAttribute4
   METHOD setAttribute5
   METHOD setAttribute6
   METHOD setAttribute7
   METHOD setAttribute
   METHOD setAttributeNS1
   METHOD setAttributeNS2
   METHOD setAttributeNS3
   METHOD setAttributeNS4
   METHOD setAttributeNS5
   METHOD setAttributeNS6
   METHOD setAttributeNS
   METHOD setAttributeNode
   METHOD setAttributeNodeNS
   METHOD setTagName
   METHOD tagName
   METHOD text
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomElement
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDomElement>
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
#include <QDomElement>
#endif

/*
QDomElement ()
*/
HB_FUNC_STATIC( QDOMELEMENT_NEW1 )
{
  QDomElement * o = new QDomElement (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomElement *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QDomElement ( const QDomElement & x )
*/
HB_FUNC_STATIC( QDOMELEMENT_NEW2 )
{
  QDomElement * par1 = (QDomElement *) _qt5xhb_itemGetPtr(1);
  QDomElement * o = new QDomElement ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomElement *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QDomElement ()
//[2]QDomElement ( const QDomElement & x )

HB_FUNC_STATIC( QDOMELEMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMELEMENT(1) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMELEMENT_DELETE )
{
  QDomElement * obj = (QDomElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString attribute ( const QString & name, const QString & defValue = QString() ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTE )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->attribute ( par1, par2 ).toLatin1().data() );
  }
}


/*
QString attributeNS ( const QString nsURI, const QString & localName, const QString & defValue = QString() ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTENS )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
    hb_retc( (const char *) obj->attributeNS ( par1, par2, par3 ).toLatin1().data() );
  }
}


/*
QDomAttr attributeNode ( const QString & name )
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTENODE )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomAttr * ptr = new QDomAttr( obj->attributeNode ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
QDomAttr attributeNodeNS ( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTENODENS )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDomAttr * ptr = new QDomAttr( obj->attributeNodeNS ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
QDomNamedNodeMap attributes () const
*/
HB_FUNC_STATIC( QDOMELEMENT_ATTRIBUTES )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNamedNodeMap * ptr = new QDomNamedNodeMap( obj->attributes (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNAMEDNODEMAP", true );
  }
}


/*
QDomNodeList elementsByTagName ( const QString & tagname ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ELEMENTSBYTAGNAME )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagName ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODELIST", true );
  }
}


/*
QDomNodeList elementsByTagNameNS ( const QString & nsURI, const QString & localName ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_ELEMENTSBYTAGNAMENS )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagNameNS ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNODELIST", true );
  }
}


/*
bool hasAttribute ( const QString & name ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_HASATTRIBUTE )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->hasAttribute ( par1 ) );
  }
}


/*
bool hasAttributeNS ( const QString & nsURI, const QString & localName ) const
*/
HB_FUNC_STATIC( QDOMELEMENT_HASATTRIBUTENS )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->hasAttributeNS ( par1, par2 ) );
  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMELEMENT_NODETYPE )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType (  ) );
  }
}


/*
void removeAttribute ( const QString & name )
*/
HB_FUNC_STATIC( QDOMELEMENT_REMOVEATTRIBUTE )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->removeAttribute ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAttributeNS ( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMELEMENT_REMOVEATTRIBUTENS )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->removeAttributeNS ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDomAttr removeAttributeNode ( const QDomAttr & oldAttr )
*/
HB_FUNC_STATIC( QDOMELEMENT_REMOVEATTRIBUTENODE )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomAttr * par1 = (QDomAttr *) _qt5xhb_itemGetPtr(1);
    QDomAttr * ptr = new QDomAttr( obj->removeAttributeNode ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
void setAttribute ( const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE1 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setAttribute ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttribute ( const QString & name, int value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE2 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setAttribute ( par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttribute ( const QString & name, uint value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE3 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setAttribute ( par1, (uint) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttribute ( const QString & name, qlonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE4 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    qlonglong par2 = hb_parnl(2);
    obj->setAttribute ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttribute ( const QString & name, qulonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE5 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    qulonglong par2 = hb_parnl(2);
    obj->setAttribute ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttribute ( const QString & name, float value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE6 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    float par2 = hb_parnd(2);
    obj->setAttribute ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttribute ( const QString & name, double value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE7 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    double par2 = hb_parnd(2);
    obj->setAttribute ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setAttribute ( const QString & name, const QString & value )
//[2]void setAttribute ( const QString & name, int value )
//[3]void setAttribute ( const QString & name, uint value )
//[4]void setAttribute ( const QString & name, qlonglong value )
//[5]void setAttribute ( const QString & name, qulonglong value )
//[6]void setAttribute ( const QString & name, float value )
//[7]void setAttribute ( const QString & name, double value )

// TODO: implementar reconhecimento de int e double
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setAttributeNS ( const QString nsURI, const QString & qName, const QString & value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS1 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    obj->setAttributeNS ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttributeNS ( const QString nsURI, const QString & qName, int value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS2 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setAttributeNS ( par1, par2, (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttributeNS ( const QString nsURI, const QString & qName, uint value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS3 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setAttributeNS ( par1, par2, (uint) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttributeNS ( const QString nsURI, const QString & qName, qlonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS4 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    qlonglong par3 = hb_parnl(3);
    obj->setAttributeNS ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttributeNS ( const QString nsURI, const QString & qName, qulonglong value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS5 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    qulonglong par3 = hb_parnl(3);
    obj->setAttributeNS ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAttributeNS ( const QString nsURI, const QString & qName, double value )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS6 )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    double par3 = hb_parnd(3);
    obj->setAttributeNS ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setAttributeNS ( const QString nsURI, const QString & qName, const QString & value )
//[2]void setAttributeNS ( const QString nsURI, const QString & qName, int value )
//[3]void setAttributeNS ( const QString nsURI, const QString & qName, uint value )
//[4]void setAttributeNS ( const QString nsURI, const QString & qName, qlonglong value )
//[5]void setAttributeNS ( const QString nsURI, const QString & qName, qulonglong value )
//[6]void setAttributeNS ( const QString nsURI, const QString & qName, double value )

HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENS )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTENS1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QDOMELEMENT_SETATTRIBUTENS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDomAttr setAttributeNode ( const QDomAttr & newAttr )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENODE )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomAttr * par1 = (QDomAttr *) _qt5xhb_itemGetPtr(1);
    QDomAttr * ptr = new QDomAttr( obj->setAttributeNode ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
QDomAttr setAttributeNodeNS ( const QDomAttr & newAttr )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETATTRIBUTENODENS )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomAttr * par1 = (QDomAttr *) _qt5xhb_itemGetPtr(1);
    QDomAttr * ptr = new QDomAttr( obj->setAttributeNodeNS ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMATTR", true );
  }
}


/*
void setTagName ( const QString & name )
*/
HB_FUNC_STATIC( QDOMELEMENT_SETTAGNAME )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setTagName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString tagName () const
*/
HB_FUNC_STATIC( QDOMELEMENT_TAGNAME )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->tagName (  ).toLatin1().data() );
  }
}


/*
QString text () const
*/
HB_FUNC_STATIC( QDOMELEMENT_TEXT )
{
  QDomElement * obj = (QDomElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}



#pragma ENDDUMP
