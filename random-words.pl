#!/usr/bin/env perl
# by William Hofferbert
#

use 5.010;				# say
use strict;				# good form
use warnings;				# know when stuff is wrong
use Data::Dumper;			# debug
use File::Basename;			# know where the script lives
use Getopt::Long;			# handle arguments
use IO::All;				# io
use List::Util qw(shuffle);		#

# Default Variables

my $prog = basename($0);
my $dict = "/usr/share/dict/words";
my $numWords = 1;
my $numLines = 1;
my $inWeight = 1;
my @dictWords;
my @inWords;

# Functions

sub usage {
  my $usage = <<"  END_USAGE";

  This program outputs an amount of random words from
  a given diction, and optionally provide a list of words
  as arguments, which will be weighted more heavily in
  random word construction

    Basic Usage: $prog 

  Options:

    -number [int]
      A number of words to output. Default is $numWords.

    -lines [int]
      A number of lines to print. Default is $numLines.

    -in-weight [int]
      How heavily to weight the input terms. Default is $inWeight.

    -dict [/path/to/dictionary]
      Provide a path to a dictionary to use.
      Default is $dict

    -help
      Print this help.

  Examples:

    # Generate one random word from $dict
      $prog 

    # All options may combined/shortened, and input words provided:
      $prog -n 4 -l 10 -i 2 one two three "quoted pair" another\\ quoted\\ pair

  END_USAGE
  chomp $usage;
  say $usage;
  exit 0;
}

sub check_required_args {		# handle leftover @ARGV stuff here if need be
  push(@inWords, @ARGV) if @ARGV;
}

sub handle_args {
  Getopt::Long::GetOptions(
    'n|number=i' => \$numWords,
    'l|lines=i' => \$numLines,
    'i|in-weight=i' => \$inWeight,
    'h|help' => \&usage,
  );
  &check_required_args;
}


sub err {
  my $msg=shift;
  say STDERR $msg;
  exit 2;
}

sub warn {
  my $msg=shift;
  say STDERR $msg;
}

sub parseDict {
  my ($file) = @_;
  return split(/\n/, io->file($file)->all);
}

sub sanity {
  @dictWords = &parseDict($dict);
  &err("No words in memory!") unless (@dictWords);
  
}

sub randomWords {
  my @printWords;
  if (@inWords) {
    my @inCopy = @inWords;
    @inCopy = shuffle @inCopy;
    for (1..$inWeight) {
      push(@printWords, shift(@inCopy));
    }
  }
  until (scalar @printWords == $numWords) {
    @dictWords = shuffle @dictWords;
    # TODO non-destructive (copyarr) shifting of @dictWords?
    push (@printWords, shift(@dictWords));
  }
  my $str = join" ", shuffle @printWords;
  while ($str =~ /(.?)((?<!')\b[a-z])/g) {
    my $one = $1;
    $one //= "";
    my $two = $2;
    my $uc = uc($two);
    $str =~ s/$one$two/$one$uc/;
  }
  return $str;
}

sub main {
  &handle_args;			# deal with arguments
  &sanity;
  for (1..$numLines) {
    say &randomWords;
  }
}

&main;

