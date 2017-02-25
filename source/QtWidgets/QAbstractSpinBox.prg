/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QAbstractSpinBox INHERIT QWidget

   DATA class_id INIT Class_Id_QAbstractSpinBox
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD fixup
   METHOD hasAcceptableInput
   METHOD interpretText
   METHOD isAccelerated
   METHOD setAccelerated
   METHOD alignment
   METHOD setAlignment
   METHOD buttonSymbols
   METHOD setButtonSymbols
   METHOD correctionMode
   METHOD setCorrectionMode
   METHOD hasFrame
   METHOD setFrame
   METHOD keyboardTracking
   METHOD setKeyboardTracking
   METHOD isReadOnly
   METHOD setReadOnly
   METHOD specialValueText
   METHOD setSpecialValueText
   METHOD wrapping
   METHOD setWrapping
   METHOD stepBy
   METHOD text
   METHOD validate
   METHOD event
   METHOD inputMethodQuery
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD selectAll
   METHOD stepDown
   METHOD stepUp
   METHOD isGroupSeparatorShown
   METHOD setGroupSeparatorShown
   METHOD onEditingFinished
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractSpinBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractSpinBox>
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
#include <QAbstractSpinBox>
#endif
#endif


HB_FUNC_STATIC( QABSTRACTSPINBOX_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void fixup ( QString & input ) const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_FIXUP )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->fixup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasAcceptableInput () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_HASACCEPTABLEINPUT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasAcceptableInput (  ) );
  }
}


/*
void interpretText ()
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_INTERPRETTEXT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->interpretText (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isAccelerated () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_ISACCELERATED )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAccelerated (  ) );
  }
}

/*
void setAccelerated ( bool on )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETACCELERATED )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAccelerated ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_ALIGNMENT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alignment (  ) );
  }
}

/*
void setAlignment ( Qt::Alignment flag )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETALIGNMENT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ButtonSymbols buttonSymbols () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_BUTTONSYMBOLS )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->buttonSymbols (  ) );
  }
}

/*
void setButtonSymbols ( ButtonSymbols bs )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETBUTTONSYMBOLS )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setButtonSymbols (  (QAbstractSpinBox::ButtonSymbols) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
CorrectionMode correctionMode () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_CORRECTIONMODE )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->correctionMode (  ) );
  }
}

/*
void setCorrectionMode ( CorrectionMode cm )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETCORRECTIONMODE )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCorrectionMode (  (QAbstractSpinBox::CorrectionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasFrame () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_HASFRAME )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasFrame (  ) );
  }
}

/*
void setFrame ( bool )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETFRAME )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFrame ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool keyboardTracking () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_KEYBOARDTRACKING )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->keyboardTracking (  ) );
  }
}

/*
void setKeyboardTracking ( bool kt )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETKEYBOARDTRACKING )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setKeyboardTracking ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_ISREADONLY )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReadOnly (  ) );
  }
}

/*
void setReadOnly ( bool r )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETREADONLY )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReadOnly ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString specialValueText () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SPECIALVALUETEXT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->specialValueText (  ).toLatin1().data() );
  }
}

/*
void setSpecialValueText ( const QString & txt )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETSPECIALVALUETEXT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setSpecialValueText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool wrapping () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_WRAPPING )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->wrapping (  ) );
  }
}

/*
void setWrapping ( bool w )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETWRAPPING )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWrapping ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void stepBy ( int steps )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_STEPBY )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stepBy ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_TEXT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}


/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_VALIDATE )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2;
    hb_retni( obj->validate ( par1, par2 ) );
  }
}


/*
bool event ( QEvent * event )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_EVENT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEvent * par1 = (QEvent *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->event ( par1 ) );
  }
}


/*
QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_INPUTMETHODQUERY )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery (  (Qt::InputMethodQuery) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_MINIMUMSIZEHINT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SIZEHINT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void clear ()
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_CLEAR )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void selectAll ()
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SELECTALL )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->selectAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stepDown ()
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_STEPDOWN )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stepDown (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stepUp ()
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_STEPUP )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stepUp (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isGroupSeparatorShown() const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_ISGROUPSEPARATORSHOWN )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isGroupSeparatorShown (  ) );
  }
}

/*
void setGroupSeparatorShown(bool shown)
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETGROUPSEPARATORSHOWN )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGroupSeparatorShown ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
