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

/*
explicit QWizard ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

/*
int addPage ( QWizardPage * page )
*/
$method=|int|addPage|QWizardPage *

/*
QAbstractButton * button ( WizardButton which ) const
*/
$method=|QAbstractButton *|button|QWizard::WizardButton

/*
void setButton ( WizardButton which, QAbstractButton * button )
*/
$method=|void|setButton|QWizard::WizardButton,QAbstractButton *

/*
QString buttonText ( WizardButton which ) const
*/
$method=|QString|buttonText|QWizard::WizardButton

/*
void setButtonText ( WizardButton which, const QString & text )
*/
$method=|void|setButtonText|QWizard::WizardButton,const QString &

/*
int currentId () const
*/
$method=|int|currentId|

/*
QWizardPage * currentPage () const
*/
$method=|QWizardPage *|currentPage|

/*
QVariant field ( const QString & name ) const
*/
$method=|QVariant|field|const QString &

/*
bool hasVisitedPage ( int id ) const
*/
$method=|bool|hasVisitedPage|int

/*
virtual int nextId () const
*/
$method=|int|nextId|

/*
WizardOptions options () const
*/
$method=|QWizard::WizardOptions|options|

/*
void setOptions ( WizardOptions options )
*/
$method=|void|setOptions|QWizard::WizardOptions

/*
QWizardPage * page ( int id ) const
*/
$method=|QWizardPage *|page|int

/*
QList<int> pageIds () const
*/
$method=|QList<int>|pageIds|

/*
QPixmap pixmap ( WizardPixmap which ) const
*/
$method=|QPixmap|pixmap|QWizard::WizardPixmap

/*
void removePage ( int id )
*/
$method=|void|removePage|int

/*
void setButtonLayout ( const QList<WizardButton> & layout )
*/
$method=|void|setButtonLayout|const QList<WizardButton> &

/*
void setDefaultProperty ( const char * className, const char * property, const char * changedSignal )
*/
$method=|void|setDefaultProperty|const char *,const char *,const char *

/*
void setField ( const QString & name, const QVariant & value )
*/
$method=|void|setField|const QString &,const QVariant &

/*
void setOption ( WizardOption option, bool on = true )
*/
$method=|void|setOption|QWizard::WizardOption,bool=true

/*
void setPage ( int id, QWizardPage * page )
*/
$method=|void|setPage|int,QWizardPage *

/*
void setPixmap ( WizardPixmap which, const QPixmap & pixmap )
*/
$method=|void|setPixmap|QWizard::WizardPixmap,const QPixmap &

/*
void setSideWidget ( QWidget * widget )
*/
$method=|void|setSideWidget|QWidget *

/*
QWidget * sideWidget () const
*/
$method=|QWidget *|sideWidget|

/*
int startId () const
*/
$method=|int|startId|

/*
void setStartId ( int id )
*/
$method=|void|setStartId|int

/*
Qt::TextFormat subTitleFormat () const
*/
$method=|Qt::TextFormat|subTitleFormat|

/*
void setSubTitleFormat(Qt::TextFormat format);
*/
$method=|void|setSubTitleFormat|Qt::TextFormat

/*
bool testOption ( WizardOption option ) const
*/
$method=|bool|testOption|QWizard::WizardOption

/*
Qt::TextFormat titleFormat () const
*/
$method=|Qt::TextFormat|titleFormat|

/*
void setTitleFormat ( Qt::TextFormat format )
*/
$method=|void|setTitleFormat|Qt::TextFormat

/*
virtual bool validateCurrentPage ()
*/
$method=|bool|validateCurrentPage|

/*
QList<int> visitedPages () const
*/
$method=|QList<int>|visitedPages|

/*
WizardStyle wizardStyle () const
*/
$method=|QWizard::WizardStyle|wizardStyle|

/*
void setWizardStyle ( WizardStyle style )
*/
$method=|void|setWizardStyle|QWizard::WizardStyle

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void back ()
*/
$method=|void|back|

/*
void next ()
*/
$method=|void|next|

/*
void restart ()
*/
$method=|void|restart|

#pragma ENDDUMP
