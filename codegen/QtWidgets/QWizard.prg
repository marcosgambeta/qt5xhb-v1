%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
REQUEST QWIZARDPAGE
REQUEST QVARIANT
REQUEST QPIXMAP
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QWizard INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD addPage
   METHOD button
   METHOD setButton
   METHOD buttonText
   METHOD setButtonText
   METHOD currentId
   METHOD currentPage
   METHOD field
   METHOD hasVisitedPage
   METHOD nextId
   METHOD options
   METHOD setOptions
   METHOD page
   METHOD pageIds
   METHOD pixmap
   METHOD removePage
   METHOD setButtonLayout
   METHOD setDefaultProperty
   METHOD setField
   METHOD setOption
   METHOD setPage
   METHOD setPixmap
   METHOD setSideWidget
   METHOD sideWidget
   METHOD startId
   METHOD setStartId
   METHOD subTitleFormat
   METHOD setSubTitleFormat
   METHOD testOption
   METHOD titleFormat
   METHOD setTitleFormat
   METHOD validateCurrentPage
   METHOD visitedPages
   METHOD wizardStyle
   METHOD setWizardStyle
   METHOD setVisible
   METHOD sizeHint
   METHOD back
   METHOD next
   METHOD restart

   METHOD onCurrentIdChanged
   METHOD onCustomButtonClicked
   METHOD onHelpRequested
   METHOD onPageAdded
   METHOD onPageRemoved

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$prototype=explicit QWizard ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=int addPage ( QWizardPage * page )
$method=|int|addPage|QWizardPage *

$prototype=QAbstractButton * button ( WizardButton which ) const
$method=|QAbstractButton *|button|QWizard::WizardButton

$prototype=void setButton ( WizardButton which, QAbstractButton * button )
$method=|void|setButton|QWizard::WizardButton,QAbstractButton *

$prototype=QString buttonText ( WizardButton which ) const
$method=|QString|buttonText|QWizard::WizardButton

$prototype=void setButtonText ( WizardButton which, const QString & text )
$method=|void|setButtonText|QWizard::WizardButton,const QString &

$prototype=int currentId () const
$method=|int|currentId|

$prototype=QWizardPage * currentPage () const
$method=|QWizardPage *|currentPage|

$prototype=QVariant field ( const QString & name ) const
$method=|QVariant|field|const QString &

$prototype=bool hasVisitedPage ( int id ) const
$method=|bool|hasVisitedPage|int

$prototype=virtual int nextId () const
$virtualMethod=|int|nextId|

$prototype=WizardOptions options () const
$method=|QWizard::WizardOptions|options|

$prototype=void setOptions ( WizardOptions options )
$method=|void|setOptions|QWizard::WizardOptions

$prototype=QWizardPage * page ( int id ) const
$method=|QWizardPage *|page|int

$prototype=QList<int> pageIds () const
$method=|QList<int>|pageIds|

$prototype=QPixmap pixmap ( WizardPixmap which ) const
$method=|QPixmap|pixmap|QWizard::WizardPixmap

$prototype=void removePage ( int id )
$method=|void|removePage|int

$prototype=void setButtonLayout ( const QList<WizardButton> & layout )
$method=|void|setButtonLayout|const QList<WizardButton> &

$prototype=void setDefaultProperty ( const char * className, const char * property, const char * changedSignal )
$method=|void|setDefaultProperty|const char *,const char *,const char *

$prototype=void setField ( const QString & name, const QVariant & value )
$method=|void|setField|const QString &,const QVariant &

$prototype=void setOption ( WizardOption option, bool on = true )
$method=|void|setOption|QWizard::WizardOption,bool=true

$prototype=void setPage ( int id, QWizardPage * page )
$method=|void|setPage|int,QWizardPage *

$prototype=void setPixmap ( WizardPixmap which, const QPixmap & pixmap )
$method=|void|setPixmap|QWizard::WizardPixmap,const QPixmap &

$prototype=void setSideWidget ( QWidget * widget )
$method=|void|setSideWidget|QWidget *

$prototype=QWidget * sideWidget () const
$method=|QWidget *|sideWidget|

$prototype=int startId () const
$method=|int|startId|

$prototype=void setStartId ( int id )
$method=|void|setStartId|int

$prototype=Qt::TextFormat subTitleFormat () const
$method=|Qt::TextFormat|subTitleFormat|

$prototype=void setSubTitleFormat(Qt::TextFormat format);
$method=|void|setSubTitleFormat|Qt::TextFormat

$prototype=bool testOption ( WizardOption option ) const
$method=|bool|testOption|QWizard::WizardOption

$prototype=Qt::TextFormat titleFormat () const
$method=|Qt::TextFormat|titleFormat|

$prototype=void setTitleFormat ( Qt::TextFormat format )
$method=|void|setTitleFormat|Qt::TextFormat

$prototype=virtual bool validateCurrentPage ()
$virtualMethod=|bool|validateCurrentPage|

$prototype=QList<int> visitedPages () const
$method=|QList<int>|visitedPages|

$prototype=WizardStyle wizardStyle () const
$method=|QWizard::WizardStyle|wizardStyle|

$prototype=void setWizardStyle ( WizardStyle style )
$method=|void|setWizardStyle|QWizard::WizardStyle

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=void back ()
$method=|void|back|

$prototype=void next ()
$method=|void|next|

$prototype=void restart ()
$method=|void|restart|

#pragma ENDDUMP
