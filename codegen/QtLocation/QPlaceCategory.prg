%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

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

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QPlaceIcon>

$prototype=QPlaceCategory()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceCategory(const QPlaceCategory &other)
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

$prototype=QString categoryId() const
$method=5,4,0|QString|categoryId|

$prototype=void setCategoryId(const QString &identifier)
$method=5,4,0|void|setCategoryId|const QString &

$prototype=QString name() const
$method=5,4,0|QString|name|

$prototype=void setName(const QString &name)
$method=5,4,0|void|setName|const QString &

$prototype=QLocation::Visibility visibility() const
$method=5,4,0|QLocation::Visibility|visibility|

$prototype=void setVisibility(QLocation::Visibility visibility)
$method=5,4,0|void|setVisibility|QLocation::Visibility

$prototype=QPlaceIcon icon() const
$method=5,4,0|QPlaceIcon|icon|

$prototype=void setIcon(const QPlaceIcon &icon)
$method=5,4,0|void|setIcon|const QPlaceIcon &

$prototype=bool isEmpty() const
$method=5,4,0|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
