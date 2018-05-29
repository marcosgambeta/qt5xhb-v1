%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD delete
   METHOD actionAdjustSize
   METHOD actionBreakLayout
   METHOD actionCopy
   METHOD actionCut
   METHOD actionDelete
   METHOD actionFormLayout
   METHOD actionGridLayout
   METHOD actionHorizontalLayout
   METHOD actionLower
   METHOD actionPaste
   METHOD actionRaise
   METHOD actionRedo
   METHOD actionSelectAll
   METHOD actionSimplifyLayout
   METHOD actionSplitHorizontal
   METHOD actionSplitVertical
   METHOD actionUndo
   METHOD actionVerticalLayout
   METHOD activeFormWindow
   METHOD core
   METHOD createFormWindow
   METHOD formWindow
   METHOD formWindowCount
   METHOD addFormWindow
   METHOD removeFormWindow
   METHOD setActiveFormWindow

   METHOD onActiveFormWindowChanged
   METHOD onFormWindowAdded
   METHOD onFormWindowRemoved

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAction>
#include <QDesignerFormEditorInterface>

$deleteMethod

$prototype=virtual QAction * actionAdjustSize () const
$virtualMethod=|QAction *|actionAdjustSize|

$prototype=virtual QAction * actionBreakLayout () const
$virtualMethod=|QAction *|actionBreakLayout|

$prototype=virtual QAction * actionCopy () const
$virtualMethod=|QAction *|actionCopy|

$prototype=virtual QAction * actionCut () const
$virtualMethod=|QAction *|actionCut|

$prototype=virtual QAction * actionDelete () const
$virtualMethod=|QAction *|actionDelete|

$prototype=QAction * actionFormLayout () const
$method=|QAction *|actionFormLayout|

$prototype=virtual QAction * actionGridLayout () const
$virtualMethod=|QAction *|actionGridLayout|

$prototype=virtual QAction * actionHorizontalLayout () const
$virtualMethod=|QAction *|actionHorizontalLayout|

$prototype=virtual QAction * actionLower () const
$virtualMethod=|QAction *|actionLower|

$prototype=virtual QAction * actionPaste () const
$virtualMethod=|QAction *|actionPaste|

$prototype=virtual QAction * actionRaise () const
$virtualMethod=|QAction *|actionRaise|

$prototype=virtual QAction * actionRedo () const
$virtualMethod=|QAction *|actionRedo|

$prototype=virtual QAction * actionSelectAll () const
$virtualMethod=|QAction *|actionSelectAll|

$prototype=QAction * actionSimplifyLayout () const
$method=|QAction *|actionSimplifyLayout|

$prototype=virtual QAction * actionSplitHorizontal () const
$virtualMethod=|QAction *|actionSplitHorizontal|

$prototype=virtual QAction * actionSplitVertical () const
$virtualMethod=|QAction *|actionSplitVertical|

$prototype=virtual QAction * actionUndo () const
$virtualMethod=|QAction *|actionUndo|

$prototype=virtual QAction * actionVerticalLayout () const
$virtualMethod=|QAction *|actionVerticalLayout|

$prototype=virtual QDesignerFormWindowInterface * activeFormWindow () const
$virtualMethod=|QDesignerFormWindowInterface *|activeFormWindow|

$prototype=virtual QDesignerFormEditorInterface * core () const
$virtualMethod=|QDesignerFormEditorInterface *|core|

$prototype=virtual QDesignerFormWindowInterface * createFormWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$virtualMethod=|QDesignerFormWindowInterface *|createFormWindow|QWidget *=0,Qt::WindowFlags=0

$prototype=virtual QDesignerFormWindowInterface * formWindow ( int index ) const
$virtualMethod=|QDesignerFormWindowInterface *|formWindow|int

$prototype=virtual int formWindowCount () const
$virtualMethod=|int|formWindowCount|

$prototype=virtual void addFormWindow ( QDesignerFormWindowInterface * formWindow )
$virtualMethod=|void|addFormWindow|QDesignerFormWindowInterface *

$prototype=virtual void removeFormWindow ( QDesignerFormWindowInterface * formWindow )
$virtualMethod=|void|removeFormWindow|QDesignerFormWindowInterface *

$prototype=virtual void setActiveFormWindow ( QDesignerFormWindowInterface * formWindow )
$virtualMethod=|void|setActiveFormWindow|QDesignerFormWindowInterface *

$beginSignals
$signal=|activeFormWindowChanged(QDesignerFormWindowInterface*)
$signal=|formWindowAdded(QDesignerFormWindowInterface*)
$signal=|formWindowRemoved(QDesignerFormWindowInterface*)
$endSignals

#pragma ENDDUMP
