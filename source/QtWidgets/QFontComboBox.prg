/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QSIZE
#endif

CLASS QFontComboBox INHERIT QComboBox

   DATA class_id INIT Class_Id_QFontComboBox
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD currentFont
   METHOD fontFilters
   METHOD setFontFilters
   METHOD setWritingSystem
   METHOD writingSystem
   METHOD sizeHint
   METHOD setCurrentFont

   METHOD onCurrentFontChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFontComboBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFontComboBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFontComboBox>
#endif

/*
QFontComboBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QFontComboBox * o = new QFontComboBox ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QFONTCOMBOBOX_DELETE )
{
  QFontComboBox * obj = (QFontComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QFont currentFont () const
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_CURRENTFONT )
{
  QFontComboBox * obj = (QFontComboBox *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->currentFont (  ) );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
FontFilters fontFilters () const
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_FONTFILTERS )
{
  QFontComboBox * obj = (QFontComboBox *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fontFilters (  ) );
  }
}


/*
void setFontFilters ( FontFilters filters )
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_SETFONTFILTERS )
{
  QFontComboBox * obj = (QFontComboBox *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFontFilters (  (QFontComboBox::FontFilters) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWritingSystem ( QFontDatabase::WritingSystem script )
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_SETWRITINGSYSTEM )
{
  QFontComboBox * obj = (QFontComboBox *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWritingSystem (  (QFontDatabase::WritingSystem) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFontDatabase::WritingSystem writingSystem () const
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_WRITINGSYSTEM )
{
  QFontComboBox * obj = (QFontComboBox *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->writingSystem (  ) );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_SIZEHINT )
{
  QFontComboBox * obj = (QFontComboBox *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setCurrentFont ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTCOMBOBOX_SETCURRENTFONT )
{
  QFontComboBox * obj = (QFontComboBox *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
    obj->setCurrentFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
