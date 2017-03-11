/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QWEBELEMENTCOLLECTION
REQUEST QRECT
REQUEST QWEBFRAME
#endif

CLASS QWebElement

   DATA pointer
   DATA class_id INIT Class_Id_QWebElement
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addClass
   METHOD appendInside1
   METHOD appendInside2
   METHOD appendInside
   METHOD appendOutside1
   METHOD appendOutside2
   METHOD appendOutside
   METHOD attribute
   METHOD attributeNS
   METHOD attributeNames
   METHOD classes
   METHOD clone
   METHOD document
   METHOD encloseContentsWith1
   METHOD encloseContentsWith2
   METHOD encloseContentsWith
   METHOD encloseWith1
   METHOD encloseWith2
   METHOD encloseWith
   METHOD evaluateJavaScript
   METHOD findAll
   METHOD findFirst
   METHOD firstChild
   METHOD geometry
   METHOD hasAttribute
   METHOD hasAttributeNS
   METHOD hasAttributes
   METHOD hasClass
   METHOD hasFocus
   METHOD isNull
   METHOD lastChild
   METHOD localName
   METHOD namespaceUri
   METHOD nextSibling
   METHOD parent
   METHOD prefix
   METHOD prependInside1
   METHOD prependInside2
   METHOD prependInside
   METHOD prependOutside1
   METHOD prependOutside2
   METHOD prependOutside
   METHOD previousSibling
   METHOD removeAllChildren
   METHOD removeAttribute
   METHOD removeAttributeNS
   METHOD removeClass
   METHOD removeFromDocument
   METHOD render1
   METHOD render2
   METHOD render
   METHOD replace1
   METHOD replace2
   METHOD replace
   METHOD setAttribute
   METHOD setAttributeNS
   METHOD setFocus
   METHOD setInnerXml
   METHOD setOuterXml
   METHOD setPlainText
   METHOD setStyleProperty
   METHOD styleProperty
   METHOD tagName
   METHOD takeFromDocument
   METHOD toInnerXml
   METHOD toOuterXml
   METHOD toPlainText
   METHOD toggleClass
   METHOD webFrame
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebElement
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebElement>
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
#include <QWebElement>
#endif

/*
QWebElement ()
*/
HB_FUNC_STATIC( QWEBELEMENT_NEW1 )
{
  QWebElement * o = new QWebElement (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebElement *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QWebElement ( const QWebElement & other )
*/
HB_FUNC_STATIC( QWEBELEMENT_NEW2 )
{
  QWebElement * par1 = (QWebElement *) _qt5xhb_itemGetPtr(1);
  QWebElement * o = new QWebElement ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebElement *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QWebElement ()
//[2]QWebElement ( const QWebElement & other )

HB_FUNC_STATIC( QWEBELEMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWEBELEMENT_DELETE )
{
  QWebElement * obj = (QWebElement *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addClass ( const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_ADDCLASS )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->addClass ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendInside ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_APPENDINSIDE1 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->appendInside ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void appendInside ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_APPENDINSIDE2 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) _qt5xhb_itemGetPtr(1);
    obj->appendInside ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void appendInside ( const QString & markup )
//[2]void appendInside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_APPENDINSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_APPENDINSIDE1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_APPENDINSIDE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void appendOutside ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_APPENDOUTSIDE1 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->appendOutside ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void appendOutside ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_APPENDOUTSIDE2 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) _qt5xhb_itemGetPtr(1);
    obj->appendOutside ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void appendOutside ( const QString & markup )
//[2]void appendOutside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_APPENDOUTSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_APPENDOUTSIDE1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_APPENDOUTSIDE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString attribute ( const QString & name, const QString & defaultValue = QString() ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_ATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->attribute ( par1, par2 ).toLatin1().data() );
  }
}


/*
QString attributeNS ( const QString & namespaceUri, const QString & name, const QString & defaultValue = QString() ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_ATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
    hb_retc( (const char *) obj->attributeNS ( par1, par2, par3 ).toLatin1().data() );
  }
}


/*
QStringList attributeNames ( const QString & namespaceUri = QString() ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_ATTRIBUTENAMES )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
    QStringList strl = obj->attributeNames ( par1 );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QStringList classes () const
*/
HB_FUNC_STATIC( QWEBELEMENT_CLASSES )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->classes (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QWebElement clone () const
*/
HB_FUNC_STATIC( QWEBELEMENT_CLONE )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->clone (  ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebElement document () const
*/
HB_FUNC_STATIC( QWEBELEMENT_DOCUMENT )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->document (  ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
void encloseContentsWith ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_ENCLOSECONTENTSWITH1 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) _qt5xhb_itemGetPtr(1);
    obj->encloseContentsWith ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void encloseContentsWith ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_ENCLOSECONTENTSWITH2 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->encloseContentsWith ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void encloseContentsWith ( const QWebElement & element )
//[2]void encloseContentsWith ( const QString & markup )

HB_FUNC_STATIC( QWEBELEMENT_ENCLOSECONTENTSWITH )
{
  if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_ENCLOSECONTENTSWITH1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_ENCLOSECONTENTSWITH2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void encloseWith ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_ENCLOSEWITH1 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->encloseWith ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void encloseWith ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_ENCLOSEWITH2 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) _qt5xhb_itemGetPtr(1);
    obj->encloseWith ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void encloseWith ( const QString & markup )
//[2]void encloseWith ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_ENCLOSEWITH )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_ENCLOSEWITH1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_ENCLOSEWITH2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant evaluateJavaScript ( const QString & scriptSource )
*/
HB_FUNC_STATIC( QWEBELEMENT_EVALUATEJAVASCRIPT )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->evaluateJavaScript ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QWebElementCollection findAll ( const QString & selectorQuery ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_FINDALL )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QWebElementCollection * ptr = new QWebElementCollection( obj->findAll ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENTCOLLECTION", true );
  }
}


/*
QWebElement findFirst ( const QString & selectorQuery ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_FINDFIRST )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QWebElement * ptr = new QWebElement( obj->findFirst ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebElement firstChild () const
*/
HB_FUNC_STATIC( QWEBELEMENT_FIRSTCHILD )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->firstChild (  ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QRect geometry () const
*/
HB_FUNC_STATIC( QWEBELEMENT_GEOMETRY )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
bool hasAttribute ( const QString & name ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->hasAttribute ( par1 ) );
  }
}


/*
bool hasAttributeNS ( const QString & namespaceUri, const QString & name ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->hasAttributeNS ( par1, par2 ) );
  }
}


/*
bool hasAttributes () const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASATTRIBUTES )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasAttributes (  ) );
  }
}


/*
bool hasClass ( const QString & name ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASCLASS )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->hasClass ( par1 ) );
  }
}


/*
bool hasFocus () const
*/
HB_FUNC_STATIC( QWEBELEMENT_HASFOCUS )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasFocus (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QWEBELEMENT_ISNULL )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QWebElement lastChild () const
*/
HB_FUNC_STATIC( QWEBELEMENT_LASTCHILD )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->lastChild (  ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QString localName () const
*/
HB_FUNC_STATIC( QWEBELEMENT_LOCALNAME )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->localName (  ).toLatin1().data() );
  }
}


/*
QString namespaceUri () const
*/
HB_FUNC_STATIC( QWEBELEMENT_NAMESPACEURI )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->namespaceUri (  ).toLatin1().data() );
  }
}


/*
QWebElement nextSibling () const
*/
HB_FUNC_STATIC( QWEBELEMENT_NEXTSIBLING )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->nextSibling (  ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebElement parent () const
*/
HB_FUNC_STATIC( QWEBELEMENT_PARENT )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->parent (  ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QString prefix () const
*/
HB_FUNC_STATIC( QWEBELEMENT_PREFIX )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->prefix (  ).toLatin1().data() );
  }
}


/*
void prependInside ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_PREPENDINSIDE1 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->prependInside ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void prependInside ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_PREPENDINSIDE2 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) _qt5xhb_itemGetPtr(1);
    obj->prependInside ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void prependInside ( const QString & markup )
//[2]void prependInside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_PREPENDINSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_PREPENDINSIDE1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_PREPENDINSIDE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void prependOutside ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_PREPENDOUTSIDE1 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->prependOutside ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void prependOutside ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_PREPENDOUTSIDE2 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) _qt5xhb_itemGetPtr(1);
    obj->prependOutside ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void prependOutside ( const QString & markup )
//[2]void prependOutside ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_PREPENDOUTSIDE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_PREPENDOUTSIDE1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_PREPENDOUTSIDE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebElement previousSibling () const
*/
HB_FUNC_STATIC( QWEBELEMENT_PREVIOUSSIBLING )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->previousSibling (  ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
void removeAllChildren ()
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVEALLCHILDREN )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAllChildren (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAttribute ( const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVEATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->removeAttribute ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAttributeNS ( const QString & namespaceUri, const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVEATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->removeAttributeNS ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeClass ( const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVECLASS )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->removeClass ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeFromDocument ()
*/
HB_FUNC_STATIC( QWEBELEMENT_REMOVEFROMDOCUMENT )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeFromDocument (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void render ( QPainter * painter )
*/
HB_FUNC_STATIC( QWEBELEMENT_RENDER1 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
    obj->render ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render ( QPainter * painter, const QRect & clip )
*/
HB_FUNC_STATIC( QWEBELEMENT_RENDER2 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
    QRect * par2 = (QRect *) _qt5xhb_itemGetPtr(2);
    obj->render ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRect & clip )

HB_FUNC_STATIC( QWEBELEMENT_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_RENDER1 );
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQRECT(2) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_RENDER2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void replace ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_REPLACE1 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->replace ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void replace ( const QWebElement & element )
*/
HB_FUNC_STATIC( QWEBELEMENT_REPLACE2 )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * par1 = (QWebElement *) _qt5xhb_itemGetPtr(1);
    obj->replace ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void replace ( const QString & markup )
//[2]void replace ( const QWebElement & element )

HB_FUNC_STATIC( QWEBELEMENT_REPLACE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_REPLACE1 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENT(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENT_REPLACE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setAttribute ( const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETATTRIBUTE )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setAttribute ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeNS ( const QString & namespaceUri, const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETATTRIBUTENS )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
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
void setFocus ()
*/
HB_FUNC_STATIC( QWEBELEMENT_SETFOCUS )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFocus (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInnerXml ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETINNERXML )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setInnerXml ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOuterXml ( const QString & markup )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETOUTERXML )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setOuterXml ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlainText ( const QString & text )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETPLAINTEXT )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPlainText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyleProperty ( const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QWEBELEMENT_SETSTYLEPROPERTY )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setStyleProperty ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString styleProperty ( const QString & name, StyleResolveStrategy strategy ) const
*/
HB_FUNC_STATIC( QWEBELEMENT_STYLEPROPERTY )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = hb_parni(2);
    hb_retc( (const char *) obj->styleProperty ( par1,  (QWebElement::StyleResolveStrategy) par2 ).toLatin1().data() );
  }
}


/*
QString tagName () const
*/
HB_FUNC_STATIC( QWEBELEMENT_TAGNAME )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->tagName (  ).toLatin1().data() );
  }
}


/*
QWebElement & takeFromDocument ()
*/
HB_FUNC_STATIC( QWEBELEMENT_TAKEFROMDOCUMENT )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = &obj->takeFromDocument (  );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT" );
  }
}


/*
QString toInnerXml () const
*/
HB_FUNC_STATIC( QWEBELEMENT_TOINNERXML )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toInnerXml (  ).toLatin1().data() );
  }
}


/*
QString toOuterXml () const
*/
HB_FUNC_STATIC( QWEBELEMENT_TOOUTERXML )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toOuterXml (  ).toLatin1().data() );
  }
}


/*
QString toPlainText () const
*/
HB_FUNC_STATIC( QWEBELEMENT_TOPLAINTEXT )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toPlainText (  ).toLatin1().data() );
  }
}


/*
void toggleClass ( const QString & name )
*/
HB_FUNC_STATIC( QWEBELEMENT_TOGGLECLASS )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->toggleClass ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebFrame * webFrame () const
*/
HB_FUNC_STATIC( QWEBELEMENT_WEBFRAME )
{
  QWebElement * obj = (QWebElement *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebFrame * ptr = obj->webFrame (  );
    _qt5xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}



HB_FUNC_STATIC( QWEBELEMENT_NEWFROM )
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

HB_FUNC_STATIC( QWEBELEMENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBELEMENT_NEWFROM );
}

HB_FUNC_STATIC( QWEBELEMENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBELEMENT_NEWFROM );
}

HB_FUNC_STATIC( QWEBELEMENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBELEMENT_SETSELFDESTRUCTION )
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