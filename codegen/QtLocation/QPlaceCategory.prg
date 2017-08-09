$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACEICON
#endif

CLASS QPlaceCategory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD categoryId
   METHOD setCategoryId
   METHOD name
   METHOD setName
   METHOD visibility
   METHOD setVisibility
   METHOD icon
   METHOD setIcon
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QPlaceIcon>

/*
QPlaceCategory()
*/
$internalConstructor=5,4,0|new1|

/*
QPlaceCategory(const QPlaceCategory &other)
*/
$internalConstructor=5,4,0|new2|const QPlaceCategory &

//[1]QPlaceCategory()
//[2]QPlaceCategory(const QPlaceCategory &other)

HB_FUNC_STATIC( QPLACECATEGORY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceCategory_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECATEGORY(1) )
  {
    QPlaceCategory_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
QString categoryId() const
*/
$method=5,4,0|QString|categoryId|

/*
void setCategoryId(const QString &identifier)
*/
$method=5,4,0|void|setCategoryId|const QString &

/*
QString name() const
*/
$method=5,4,0|QString|name|

/*
void setName(const QString &name)
*/
$method=5,4,0|void|setName|const QString &

/*
QLocation::Visibility visibility() const
*/
$method=5,4,0|QLocation::Visibility|visibility|

/*
void setVisibility(QLocation::Visibility visibility)
*/
$method=5,4,0|void|setVisibility|QLocation::Visibility

/*
QPlaceIcon icon() const
*/
$method=5,4,0|QPlaceIcon|icon|

/*
void setIcon(const QPlaceIcon &icon)
*/
$method=5,4,0|void|setIcon|const QPlaceIcon &

/*
bool isEmpty() const
*/
$method=5,4,0|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
