#ifndef PASSLAUNCHER_H
#define PASSLAUNCHER_H

#include <QObject>
#include <QProcess>

class PassLauncher : public QObject
{
    Q_OBJECT
public:
    explicit PassLauncher(QObject *parent = 0);

    Q_INVOKABLE QStringList showPassword(QString);
    Q_INVOKABLE bool movePassword(QString, QString);
    Q_INVOKABLE bool insertPassord(QString, QString);

//    Q_INVOKABLE bool generatePassWord();
//    Q_INVOKABLE bool initPass();
//    Q_INVOKABLE bool editPassword();
//    Q_INVOKABLE bool updateGit();

signals:

public slots:

private:
    QProcess *m_process;

};

#endif // PASSLAUNCHER_H
