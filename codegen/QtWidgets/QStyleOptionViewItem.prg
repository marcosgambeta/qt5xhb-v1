$header

#include "hbclass.ch"

%% TODO: class under condition #ifndef QT_NO_ITEMVIEWS

CLASS QStyleOptionViewItem INHERIT QStyleOption

   METHOD new
%%   METHOD delete

   METHOD displayAlignment
   METHOD decorationAlignment
   METHOD textElideMode
   METHOD decorationPosition
   METHOD decorationSize
   METHOD font
   METHOD showDecorationSelected
   METHOD features
   METHOD locale
   METHOD widget
   METHOD index
   METHOD checkState
   METHOD icon
   METHOD text
   METHOD viewItemPosition
   METHOD backgroundBrush

   METHOD setDisplayAlignment
   METHOD setDecorationAlignment
   METHOD setTextElideMode
   METHOD setDecorationPosition
   METHOD setDecorationSize
   METHOD setFont
   METHOD setShowDecorationSelected
   METHOD setFeatures
   METHOD setLocale
   METHOD setWidget
   METHOD setIndex
   METHOD setCheckState
   METHOD setIcon
   METHOD setText
   METHOD setViewItemPosition
   METHOD setBackgroundBrush

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionViewItem()
$internalConstructor=|new1|

$prototype=QStyleOptionViewItem(const QStyleOptionViewItem &other)
$internalConstructor=|new2|const QStyleOptionViewItem &

$prototype=QStyleOptionViewItem(int version) (protected)

//[1]QStyleOptionViewItem()
//[2]QStyleOptionViewItem(const QStyleOptionViewItem &other) : QStyleOption(Version, Type)
//[3]QStyleOptionViewItem(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionViewItem_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONVIEWITEM(1) )
  {
    QStyleOptionViewItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=Qt::Alignment displayAlignment
$variableMethod=|Qt::Alignment|displayAlignment|
$variableMethod=|void|displayAlignment,setDisplayAlignment|Qt::Alignment

$prototype=Qt::Alignment decorationAlignment
$variableMethod=|Qt::Alignment|decorationAlignment|
$variableMethod=|void|decorationAlignment,setDecorationAlignment|Qt::Alignment

$prototype=Qt::TextElideMode textElideMode
$variableMethod=|Qt::TextElideMode|textElideMode|
$variableMethod=|void|textElideMode,setTextElideMode|Qt::TextElideMode

$prototype=Position decorationPosition
$variableMethod=|QStyleOptionViewItem::Position|decorationPosition|
$variableMethod=|void|decorationPosition,setDecorationPosition|QStyleOptionViewItem::Position

$prototype=QSize decorationSize
$variableMethod=|QSize|decorationSize|
$variableMethod=|void|decorationSize,setDecorationSize|QSize

$prototype=QFont font
$variableMethod=|QFont|font|
$variableMethod=|void|font,setFont|QFont

$prototype=bool showDecorationSelected
$variableMethod=|bool|showDecorationSelected|
$variableMethod=|void|showDecorationSelected,setShowDecorationSelected|bool

$prototype=ViewItemFeatures features
$variableMethod=|QStyleOptionViewItem::ViewItemFeatures|features|
$variableMethod=|void|features,setFeatures|QStyleOptionViewItem::ViewItemFeatures

$prototype=QLocale locale
$variableMethod=|QLocale|locale|
$variableMethod=|void|locale,setLocale|QLocale

$prototype=const QWidget *widget
$variableMethod=|const QWidget *|widget|
$variableMethod=|void|widget,setWidget|const QWidget *

$prototype=QModelIndex index
$variableMethod=|QModelIndex|index|
$variableMethod=|void|index,setIndex|QModelIndex

$prototype=Qt::CheckState checkState
$variableMethod=|Qt::CheckState|checkState|
$variableMethod=|void|checkState,setCheckState|Qt::CheckState

$prototype=QIcon icon
$variableMethod=|QIcon|icon|
$variableMethod=|void|icon,setIcon|QIcon

$prototype=QString text
$variableMethod=|QString|text|
$variableMethod=|void|text,setText|QString

$prototype=ViewItemPosition viewItemPosition
$variableMethod=|QStyleOptionViewItem::ViewItemPosition|viewItemPosition|
$variableMethod=|void|viewItemPosition,setViewItemPosition|QStyleOptionViewItem::ViewItemPosition

$prototype=QBrush backgroundBrush
$variableMethod=|QBrush|backgroundBrush|
$variableMethod=|void|backgroundBrush,setBackgroundBrush|QBrush

#pragma ENDDUMP
