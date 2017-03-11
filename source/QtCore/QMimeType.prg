/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QMimeType

   DATA pointer
   DATA class_id INIT Class_Id_QMimeType
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD swap
   METHOD isValid
   METHOD isDefault
   METHOD name
   METHOD comment
   METHOD genericIconName
   METHOD iconName
   METHOD globPatterns
   METHOD parentMimeTypes
   METHOD allAncestors
   METHOD aliases
   METHOD suffixes
   METHOD preferredSuffix
   METHOD inherits
   METHOD filterString
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMimeType
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMimeType>
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
#include <QMimeType>
#endif

#include <QStringList>

/*
QMimeType()
*/
HB_FUNC_STATIC( QMIMETYPE_NEW1 )
{
  QMimeType * o = new QMimeType (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMimeType *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QMimeType(const QMimeType &other)
*/
HB_FUNC_STATIC( QMIMETYPE_NEW2 )
{
  QMimeType * par1 = (QMimeType *) _qt5xhb_itemGetPtr(1);
  QMimeType * o = new QMimeType ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMimeType *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QMimeType()
//[2]QMimeType(const QMimeType &other)

HB_FUNC_STATIC( QMIMETYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMIMETYPE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQMIMETYPE(1) )
  {
    HB_FUNC_EXEC( QMIMETYPE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMIMETYPE_DELETE )
{
  QMimeType * obj = (QMimeType *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QMimeType &other)
*/
HB_FUNC_STATIC( QMIMETYPE_SWAP )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMimeType * par1 = (QMimeType *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QMIMETYPE_ISVALID )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool isDefault() const
*/
HB_FUNC_STATIC( QMIMETYPE_ISDEFAULT )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDefault (  ) );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QMIMETYPE_NAME )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
QString comment() const
*/
HB_FUNC_STATIC( QMIMETYPE_COMMENT )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->comment (  ).toLatin1().data() );
  }
}


/*
QString genericIconName() const
*/
HB_FUNC_STATIC( QMIMETYPE_GENERICICONNAME )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->genericIconName (  ).toLatin1().data() );
  }
}


/*
QString iconName() const
*/
HB_FUNC_STATIC( QMIMETYPE_ICONNAME )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->iconName (  ).toLatin1().data() );
  }
}


/*
QStringList globPatterns() const
*/
HB_FUNC_STATIC( QMIMETYPE_GLOBPATTERNS )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->globPatterns (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QStringList parentMimeTypes() const
*/
HB_FUNC_STATIC( QMIMETYPE_PARENTMIMETYPES )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->parentMimeTypes (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QStringList allAncestors() const
*/
HB_FUNC_STATIC( QMIMETYPE_ALLANCESTORS )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->allAncestors (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QStringList aliases() const
*/
HB_FUNC_STATIC( QMIMETYPE_ALIASES )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->aliases (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QStringList suffixes() const
*/
HB_FUNC_STATIC( QMIMETYPE_SUFFIXES )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->suffixes (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QString preferredSuffix() const
*/
HB_FUNC_STATIC( QMIMETYPE_PREFERREDSUFFIX )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->preferredSuffix (  ).toLatin1().data() );
  }
}


/*
bool inherits(const QString &mimeTypeName) const
*/
HB_FUNC_STATIC( QMIMETYPE_INHERITS )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->inherits ( par1 ) );
  }
}


/*
QString filterString() const
*/
HB_FUNC_STATIC( QMIMETYPE_FILTERSTRING )
{
  QMimeType * obj = (QMimeType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->filterString (  ).toLatin1().data() );
  }
}



HB_FUNC_STATIC( QMIMETYPE_NEWFROM )
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

HB_FUNC_STATIC( QMIMETYPE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMIMETYPE_NEWFROM );
}

HB_FUNC_STATIC( QMIMETYPE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMIMETYPE_NEWFROM );
}

HB_FUNC_STATIC( QMIMETYPE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMIMETYPE_SETSELFDESTRUCTION )
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