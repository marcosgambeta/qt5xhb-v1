$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamNamespaceDeclaration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD namespaceUri
   METHOD prefix

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QXmlStreamNamespaceDeclaration()
*/
void QXmlStreamNamespaceDeclaration_new1 ()
{
  QXmlStreamNamespaceDeclaration * o = new QXmlStreamNamespaceDeclaration ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & other)
*/
void QXmlStreamNamespaceDeclaration_new2 ()
{
  QXmlStreamNamespaceDeclaration * o = new QXmlStreamNamespaceDeclaration ( *PQXMLSTREAMNAMESPACEDECLARATION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamNamespaceDeclaration(const QString & prefix, const QString & namespaceUri)
*/
void QXmlStreamNamespaceDeclaration_new3 ()
{
  QXmlStreamNamespaceDeclaration * o = new QXmlStreamNamespaceDeclaration ( PQSTRING(1), PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QXmlStreamNamespaceDeclaration()
//[2]QXmlStreamNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & other)
//[3]QXmlStreamNamespaceDeclaration(const QString & prefix, const QString & namespaceUri)

HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamNamespaceDeclaration_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMNAMESPACEDECLARATION(1) )
  {
    QXmlStreamNamespaceDeclaration_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamNamespaceDeclaration_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QStringRef namespaceUri() const
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_NAMESPACEURI )
{
  QXmlStreamNamespaceDeclaration * obj = (QXmlStreamNamespaceDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->namespaceUri () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef prefix() const
*/
HB_FUNC_STATIC( QXMLSTREAMNAMESPACEDECLARATION_PREFIX )
{
  QXmlStreamNamespaceDeclaration * obj = (QXmlStreamNamespaceDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->prefix () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

$extraMethods

#pragma ENDDUMP
