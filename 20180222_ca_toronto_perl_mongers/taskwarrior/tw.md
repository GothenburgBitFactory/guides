---
title: Taskwarrior and Kusarigama
author: Yanick Champoux yanick.champoux@iinteractive.com
separator: '>>>'
verticalSeparator: 'vvv'
---

Fighting the Good Fight


with Taskwarrior and the Kusarigama

<div style="text-align: center">
<img src="public/tw_kusarigama.png" width="300px" style="border-width: 0px"/>
</div>

<div>&nbsp;</div>

<span style="font-size: 0.8em">
Yanick Champoux 
</span>

<span style="font-size: 0.8em">
[yanick.champoux@iinteractive.com](mailto:yanick.champoux@iinteractive.com) / twitter: [@yenzie](https://twitter.com/yenzie)
</span>


## Battleplan

* Unto the warpath

* Taskwarrior - *get more efficient with tasks..*

* Customize via the Kusarigama - *...then waste it all in yak shaving*

## Motivation

My task management skills suck

Like, lots.

## [Getting Things Done](https://gettingthingsdone.com/)

<img src="public/gtd.jpg" height="400" />

##v Two takeaways

* Dump all your tasks somewhere
* Keep things simple

## Cue in Quest For Perfect Tool

![](public/grail.jpg)

# GUI

* Open browser, wiggle mouse, lots of work
* Always close, never cigar.
* In the cloud == far away

<img src="public/drake_no.jpg" width="200" />


#v ![](public/hiveminder.png)

[https://github.com/bestpractical/hiveminder](https://github.com/bestpractical/hiveminder)


# CLI

* I live in terminals
* Allow for piping and grepping and UNIXing
* Scriptable
* Autocomplete

<img src="public/drake_yes.jpg" width="200" />

## Enter [Taskwarrior](https://taskwarrior.org/)

* CLI tool `task`
* Written in C++
* Flexible, extensive set of options
* Customizable

## Like Vi 

start small, learning slope just keep goin' up

## Basics: create, list, and close

## create

``` sh
$ task add Write taskwarrior prez for toronto.pm

Created task 1.
```

## see

``` sh
$ task list

ID Age Description                               Urg
 1 5s  Write taskwarrior prez for toronto.pm        0

1 task
```

## close

``` sh
$ task done 1

Completed task 1 'Write taskwarrior prez for toronto.pm'.
Completed 1 task.
```

##v abandon

``` sh
$ task delete 1

Delete task 1 'Write taskwarrior prez for toronto.pm'? (yes/no) y
Deleting task 1 'Write taskwarrior prez for toronto.pm'.
Deleted 1 task.
```

## Undo the past

```
$ task undo

The last modification was made 2/19/2018

             Prior Values       Current Values

description  Write taskwarrior  Write taskwarrior prez for
             toronto.pm         toronto.pm
entry        2018-02-19         2018-02-19
modified     2018-02-19         2018-02-19

status       pending            deleted

uuid         4057ec52-2a73-4776 4057ec52-2a73-4776-9dbc
-f72f402581a9
end                             2018-02-19


The undo command is not reversible.  Are you sure you want to revert to th
e previous state? (yes/no) y
Modified task reverted.
```

## adding metadata

## tags

```
$ task 1 append +talk +toronto

Appending to task 1 'Write taskwarrior prez for toronto.pm'.
Appended 1 task.
```

## project

```
$ task 1 append project:talks

Appending to task 1 'Write taskwarrior prez for toronto.pm'.
Appended 1 task.
Project 'talks' is 0% complete (1 task remaining).
```

## priorities

    $ task 1 append priority:H

    Appending to task 1 'Write taskwarrior prez for toronto.pm'.
    Appended 1 task.
    Project 'talks' is 0% complete (1 task remaining).

## deadlines

    $ task 1 append due:2018-02-22

    Appending to task 1 'Write taskwarrior talk for toronto.pm'.
    Appended 1 task.
    Project 'talks' is 0% complete (1 task remaining).

##v many ways to specify times

    due:4d
    due:thursday
    due:22nd
    due:eow
    due:eom-43h

## not right now

    $ task 1 append wait:21st

    Appending to task 1 'Write taskwarrior talk for toronto.pm'.
    Appended 1 task.
    Project 'talks' is 0% complete (1 task remaining).

## dependencies

    $ task add "email slides to group" depends:1

    Created task 4.

# Querying 

## info

    $ task 1 info

    Name          Value
    ID            1
    Description   Write taskwarrior talk for toronto.pm
    Status        Waiting
    Project       talks
    Entered       2018-02-19 11:50:24 (18min)
    Waiting until 2018-02-21 00:00:00
    Due           2018-02-22 00:00:00
    Last modified 2018-02-19 12:09:03 (5s)
    Tags          talk toronto
    Virtual tags  DUE MONTH TAGGED UDA UNBLOCKED WAITING WEEK YEAR LATEST
                PROJECT PRIORITY
    UUID          4057ec52-2a73-4776-9dbc-f72f402581a9
    Urgency       92.73
    Priority      H

        project             1 *    1 =      1
        waiting             1 *   -3 =     -3
        tags              0.9 *    1 =    0.9
        due             0.638 * 1e+0 =   63.8
        UDA priority.H      1 *   30 =     30
                                    ------
                                        92.73

    Date                Modification
    2018-02-19 12:03:58 Tags set to 'talk,toronto'.
    2018-02-19 12:04:50 Project set to 'talks'.
    2018-02-19 12:05:17 Priority set to 'H'.
    2018-02-19 12:06:28 Description changed from 'Write taskwarrior prez for
                        toronto.pm' to 'Write taskwarrior talk for
                        toronto.pm'.
    2018-02-19 12:07:31 Due set to '2018-02-22 00:00:00'.
    2018-02-19 12:07:47 Due changed from '2018-02-22 00:00:00' to '2018-02-23
                        12:07:47'.
    2018-02-19 12:07:51 Due changed from '2018-02-23 12:07:47' to '2018-02-22
                        00:00:00'.
    2018-02-19 12:09:03 Wait set to '2018-02-21 00:00:00'.
                        Status changed from 'pending' to 'waiting'.


## urgency

        project             1 *    1 =      1
        waiting             1 *   -3 =     -3
        tags              0.9 *    1 =    0.9
        due             0.638 * 1e+0 =   63.8
        UDA priority.H      1 *   30 =     30
                                    ------
                                        92.73


## list

    $ task list

    ID Age P Project   Tags         Due   Desc      Urg
    1 2h  H talks     talk toronto  2d   Write...   96.1
    4 1m  D                              ema..        -5
    2 34s             shopping           buy t...    0.8
    3 2s    TW-K                         relea...      1

    4 tasks

## next

    $ task next

    ID Age P Project   Tags         Due   Desc      Urg
    1 2h  H talks     talk toronto  2d   Write...   96.1
    2 34s             shopping           buy t...    0.8
    3 2s    TW-K                         relea...      1

    3 tasks

## fancy reports

    task burndown.daily
    task calendar
    task history
    task summary
    task stats

## context

    $ task context define work +ii or \( project:foo and due.before:1month \)
    $ task context work
    ...
    $ task context none


## Customizations

## `.tasks/pending.data` easy to read

    [description:"Write t..." due:"1519275600" ... ]

##v But you don't need to!

    task export 
    task import

##v

    $ task export | jq '.[]|.urgency' | histogram.py

    # NumSamples = 4; Min = -5.00; Max = 104.21
    # Mean = 25.251500; Variance = 2083.744357; SD = 45.648049; Median 0.900000
    # each ∎ represents a count of 1
    -5.0000 -     5.9206 [     3]: ∎∎∎
    5.9206 -    16.8412 [     0]:
    16.8412 -    27.7618 [     0]:
    27.7618 -    38.6824 [     0]:
    38.6824 -    49.6030 [     0]:
    49.6030 -    60.5236 [     0]:
    60.5236 -    71.4442 [     0]:
    71.4442 -    82.3648 [     0]:
    82.3648 -    93.2854 [     0]:
    93.2854 -   104.2060 [     1]: ∎

## Hooks

Just like git

    ~/.task/hooks/on-launch*
    ~/.task/hooks/on-add*
    ~/.task/hooks/on-modify*
    ~/.task/hooks/on-exit*

## [Taskwarrior::Kusarigama](https://metacpan.org/release/Taskwarrior-Kusarigama)

## 2 types of plugins

* Behavior tweaker
* New `task <command>`

## only one active task

    task start 1
    task start 2
    task stop 1

##

```perl
package Taskwarrior::Kusarigama::Plugin::SingleActive;

use Moo;

extends 'Taskwarrior::Kusarigama::Hook';
with    'Taskwarrior::Kusarigama::Hook::OnLaunch';

sub on_launch($self) {
    $self->run_task->stop( [ '+ACTIVE', '+PENDING' ] )
        if $self->command eq 'start';
};
```

## progress

    $ task add read gt book goal:323

    $ task 650 list

    ID  Age Description              Urg
    650 45s read gtd book (0/323)      0

    $ task 650 progress 100
    650 ======------------- 100/323

##v

```perl
package Taskwarrior::Kusarigama::Plugin::Command::Progress;

use Moo;

extends 'Taskwarrior::Kusarigama::Plugin';

with qw/
    Taskwarrior::Kusarigama::Hook::OnCommand
    Taskwarrior::Kusarigama::Hook::OnAdd
    Taskwarrior::Kusarigama::Hook::OnModify
/;
```

##v 

```perl
has custom_uda => (
    is => 'ro',
    default => sub{ +{
        goal     => 'quantifiable goal',
        progress => "where we're at",
    }},
);
```

##v

```perl
sub on_add { goto &on_modify; }

sub on_modify ( $self, $task ) {
    my $goal = $task->{goal} or return;

    my $progress = $task->{progress};

    $task->{description} =~ s#\(\d+\/\d+\)(.*?)$#$1#;
    $task->{description} .= sprintf ' (%d/%d)', $progress, $goal;

    return $task;
}
```

##v

```perl
 # task gtd progress +36 good chapter

sub on_command($self) {
    # only grab goal'ed tasks
    my @tasks = $self->run_task->export( 
        $self->pre_command_args, { 'goal.any' => '' }
    ) or die "no tasks found\n";

    my $note = $self->post_command_args
        =~ s/\s*(=?)(-?\d*)\s*//r;
```

##v 


```perl
  for my $task ( @tasks ) {
    my $progress = $1?$2:($2||1) + $task->{progress};
    my $goal = $task->{goal};

    my $ratio = $progress / $goal;

    print $task->{id}, ' ', 
        '=' x ( 20 * $ratio ), 
        '-' x ( 20 * ( 1 - $ratio ) ), 
        ' ', $progress, '/', $goal, "\n";
```

##v

```perl
    $task->{progress} = $progress;

    $task->add_annotation( $note ) if $note;

    $task->{status} = 'completed'
      if $progress >= $task->{goal} 

    $task->save;
  }
};
```

## Dependencies

    $ task add do this
    Created task 14
    $ task add do that depends:14
    Created task 15
    $ task add do the prerequisite thing
    Created task 16
    $ task 15 append depends:16

##v

    $ task add do this
    $ task and-after do that
    $ task but-before do the prerequisite thing

##v

    $ task gtd and-after write review

```perl
package Taskwarrior::Kusarigama::Plugin::Command::AndAfter;
use Moo;
extends 'Taskwarrior::Kusarigama::Plugin';
with    'Taskwarrior::Kusarigama::Hook::OnCommand';

sub on_command($self) {

  my $dep = $self->pre_command_args ||
    ( $self->tw->run_task->export('+LATEST') )[0]->{uuid};

  $self->tw->run_task->add(
    $self->post_command_args, { depends => $dep }
  );

  say "task added";
};
```

##v

    $ task gtd but-before go buy gtd book 

```perl
package Taskwarrior::Kusarigama::Plugin::Command::ButBefore;

sub on_command {
  my $self = shift;

  my $prev = $self->pre_command_args  
    || ($self->tw->run_task->export( '+LATEST' ))[0]->{uuid};

  $self->tw->run_task->add( $self->post_command_args );

  my( $new_task ) = $self->tw->run_task->export( '+LATEST' );
  say "added new task ", $new_task->{id};

  $self->tw->run_task->append( $prev, { depends => $new_task->{uuid} } );
  say "dependencies added";
};
```

## Learn more

* [Paul Fenwick at a conf near
    you](https://www.youtube.com/watch?v=zl68asL9jZA)
* [Brian Wisti's blog](https://randomgeekery.org/tags/taskwarrior/)

