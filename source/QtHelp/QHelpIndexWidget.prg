/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QHelpIndexWidget INHERIT QListView

   DATA class_id INIT Class_Id_QHelpIndexWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD activateCurrentItem
   METHOD filterIndices
   METHOD onLinkActivated
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpIndexWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHelpIndexWidget>
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
#include <QHelpIndexWidget>
#endif

HB_FUNC_STATIC( QHELPINDEXWIDGET_DELETE )
{
  QHelpIndexWidget * obj = (QHelpIndexWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void activateCurrentItem ()
*/
HB_FUNC_STATIC( QHELPINDEXWIDGET_ACTIVATECURRENTITEM )
{
  QHelpIndexWidget * obj = (QHelpIndexWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->activateCurrentItem (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void filterIndices ( const QString & filter, const QString & wildcard = QString() )
*/
HB_FUNC_STATIC( QHELPINDEXWIDGET_FILTERINDICES )
{
  QHelpIndexWidget * obj = (QHelpIndexWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    obj->filterIndices ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
