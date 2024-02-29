SKIP_TESTS=(
    # Very Simple example. Compare with 3.7 Need 3.8 parse rules for exception handling return
    #    for proto in p:
    #    try:
    #        drop = 5
    #    except StopIteration:
    #        continue

    [test_dict.py]=1 #

    # Simple example. Compare with 3.7 Need 3.8 parse rules for exception handling return
    #    try:
    #    return 5
    # except KeyError:
    #    return res
    # except TypeError:
    #    return 10

    # These and the above may be due to new code generation or tests
    # between 3.8.3 and 3.8.5 ?
    [test_decorators.py]=1 #

    [test_dtrace.py]=1 #
    [test_exceptions.py]=1 #
    [test_ftplib.py]=1 #
    [test_gc.py]=1 #
    [test_gzip.py]=1 #
    [test_hashlib.py]=1 #
    [test_iter.py]=1 #
    [test_itertools.py]=1 #

    [test_asynchat.py]=1 # FIXME: takes more than 15 seconds to run works in a795b2195 ?
    [test_binascii.py]=1 # Killing test_binascii.py; takes more than 30 seconds to run
    [test_builtin.py]=1 # too long to run test; works on uncompyle6
    [test_colorsys.py]=1 # too long to run test; works on uncompyle6
    [test_contextlib_async.py]=1 # FIXME: parse error works on uncompyle6?
    [test_capi.py]=1 # works on uncompyle6 ?
    [test_codeccallbacks.py]=1 # works on uncompyle6 ?

    [test_dataclasses.py]=1 # works on uncompyle6 ?
    [test_deque.py]=1 # works on uncompyle6 ?
    [test_parser.py]=1 # works on uncompyle6 ?
    [test_sysconfig.py]=1 # works on uncompyle6 ?
    [test_thread.py]=1 # works on uncompyle6 ?

    [test_fileio.py]=1 # works on uncompyle6
    [test_fork1.py]=1 # works on uncompyle6
    [test_format.py]=1 # works on uncompyle6?
    [test_fractions.py]=1 # works on uncompyle6

    [test_heapq.py]=1 # works on uncompyle6
    [test_marshal.py]=1 # works on uncompyle6
    [test_pkgimport.py]=1 # works on uncompyle6
    [test_sched.py]=1 # works on uncompyle6
    [test_smtplib.py]=1 # works on uncompyle6
    [test_threadedtempfile.py]=1 # works on uncompyle6
    [test_threadsignals.py]=1 # works on uncompyle6
    [test_time.py]=1 # works on uncompyle6
    [test_urllib2net.py]=1 # works on uncompyle6
    [test_urllib.py]=1 # works on uncompyle6
    [test_venv.py]=1 # works on uncompyle6
    [test_zipimport.py]=1 # works on uncompyle6

    [test_embed.py]=1 # FIXME: parse error works in c28a3d1c
    [test_pathlib.py]=1 # FIXME: parse error works in c28a3d1c
    [test_platform.py]=1 # FIXME: parse error works in c28a3d1c
    [test_profile.py]=1 # FIXME: parse error works in c28a3d1c
    [test_shelve.py]=1 # FIXME: parse error works in c28a3d1c
    [test_type_comments.py]=1 # FIXME: parse error works in c28a3d1c
    [test_wsgiref.py]=1 # FIXME: parse error works in c28a3d1c
    # And others!

    [test_c_locale_coercion.py]=1 # FIXME: parse error works in a810b68e

    [test_httpservers.py]=1 # FIXME: works in master? 795b2195? test check failures
    [test_pulldom.py]=1 # FIXME: works in master? 795b2195? test check failures

    [test_shlex.py]=1 # FIXME: "or" is getting generated in a "for" instead of "if"
    [test_nis.py]=1 # FIXME: works on ac5594b0; probably a "for38" reduction check
    [test__xxsubinterpreters.py]=1 # FIXME: works on ac5594b0; probably a "for38" reduction checks

    [test_urllib2.py]=1 # FIXME: test failures works on uncompyle6?

    [test___all__.py]=1 # it fails on its own
    [test_argparse.py]=1 #- it fails on its own
    [test_array.py]=1 #- parse error
    [test_asdl_parser.py]=1 # it fails on its own
    [test_asyncgen.py]=1 # parse error
    [test_asyncore.py]=1 # test run takes more than 15 secs.
    [test_atexit.py]=1  # The atexit test looks for specific comments in error lines
    [test_audioop.py]=1  # test failure

    [test_baseexception.py]=1  # test errors; control flow probably
    [test_bigmem.py]=1  # parse error
    [test_binop.py]=1  # parse error
    [test_bdb.py]=1  # parse error
    [test_buffer.py]=1  # parse error; take a long time to decompile
    [test_bz2.py]=1  # parse error

    [test_cap.py]=1  # takes too long to run before decompiling - 15 seconds
    [test_cgi.py]=1  # parse error
    [test_clinic.py]=1 # it fails on its own
    [test_cmath.py]=1 # parse error
    [test_cmd.py]=1  # parse error
    [test_cmd_line.py]=1  # Interactive?
    [test_cmd_line_script.py]=1 # test check failures
    [test_code_module.py]=1 # parse error
    [test_codecs.py]=1 # parse error
    [test_collections.py]=1 # parse error
    [test_compile.py]=1 # test check failures
    [test_compileall.py]=1 # fails on its own
    [test_concurrent_futures.py]=1 # too long
    [test_configparser.py]=1 # test failures
    [test_coroutines.py]=1 # Parse error
    [test_ctypes.py]=1 # it fails on its own
    [test_curses.py]=1 # Parse error

    [test_datetime.py]=1   # Takes too long
    [test_dbm.py]=1   # parse error
    [test_dbm_dumb.py]=1   # parse error
    [test_dbm_gnu.py]=1   # Takes too long
    [test_dbm_ndbm.py]=1 # it fails on its own
    [test_decimal.py]=1   # Parse error; takes a long time to decompile
    [test_descr.py]=1   # test failure
    [test_descrtut.py]=1   # parse error
    [test_devpoll.py]=1 # it fails on its own
    [test_dictcomps.py]=1 # test check failures
    [test_dis.py]=1   # Parse error. We change line numbers - duh!
    [test_doctest.py]=1 # test check failures
    [test_docxmlrpc.py]=1

    [test_enum.py]=1   # Test errors
    [test_enumerate.py]=1   # parse error
    [test_exception_hierarchy.py]=1 # control flow?

    [test_file_eintr.py]=1 # too long to run test; works on 3.7.7
    [test_fileinput.py]=1  # parse error
    [test_frame.py]=1 # Test failures
    [test_fstring.py]=1 # Investigate: Syntax error unexcpeted EOF wile parsing
    [test_functools.py]=1 # running tests takes too long

    [test_gdb.py]=1 # it fails on its own
    [test_generators.py]=1  # parse error
    [test_glob.py]=1  # test errors
    [test_grammar.py]=1 # parse error (also takes a while to decompile)
    [test_grp.py]=1 # takes too long to run

    [test_httplib.py]=1 # parse error
    [test_httpservers.py]=1 # test check failure

    [test_io.py]=1 # test takes too long to run: 37 seconds
    [test_imaplib.py]=1 # parse error
    [test_inspect.py]=1 # parse error

    [test_kqueue.py]=1 # it fails on its own

    [test__locale.py]=1 # parse error
    [test_largefile.py]=1 # parse error
    [test_lib2to3.py]=1 # it fails on its own
    [test_locale.py]=1 # parse error
    [test_logging.py]=1 # test takes too long to run: 20 seconds
    [test_long.py]=1 # test check failures. Takes a long time to run
    [test_lzma.py]=1 # it fails on its own

    [test_mailbox.py]=1 # test failures
    [test_math.py]=1 # parser error; takes a long time to run
    [test_minidom.py]=1 # test failure
    [test_modulefinder.py]=1 # test failures
    [test_msilib.py]=1 # fails on its own
    [test_multiprocessing_fork.py]=1 # test takes too long to run: 62 seconds
    [test_multiprocessing_forkserver.py]=1
    [test_multiprocessing_spawn.py]=1 # takes too long to run before decompilation

    [test_named_expressions.py]=1 # Investigate tests failures. This stress tests named-expression handling
    [test_normalization.py]=1 # parse error
    [test_nntplib.py]=1 # takes too long to run before decompilation: 25 seconds

    [test_opcodes.py]=1 # test check failure
    [test_optparse.py]=1 # parse error
    [test_ordered_dict.py]=1 # parse error

    # Test assertion failure due to boolean evaluation of:
    # @unittest.skipUnless(os.isatty(0) and (sys.platform.startswith('win') or
    # (hasattr(locale, 'nl_langinfo') and hasattr(locale, 'CODESET')))
    [test_os.py]=1

    [test_ossaudiodev.py]=1 # it fails on its own

    [test_pdb.py]=1 # Probably relies on comments
    [test_peepholer.py]=1 # decompile takes a long time; then test check error
    [test_pickle.py]=1 # Probably relies on comments
    [test_pkg.py]=1 # Investigate: lists differ
    [test_pkgutil.py]=1 # Investigate:
    [test_poll.py]=1 # Takes too long to run before decompiling: 11 seconds
    [test_positional_only_arg.py]=1 # test failures
    [test_poplib.py]=1 # parse error
    [test_posix.py]=1 # parse error
    [test_pwd.py]=1 # killing - doesn't terminate
    [test_pulldom.py]=1 # test check failures
    [test_pyclbr.py]=1 # parse error
    [test_pydoc.py]=1 # it fails on its own

    [test_queue.py]=1  # parse error

    [test_raise.py]=1  # test check failure
    [test_random.py]=1  # test check failure
    [test_range.py]=1  # parse error
    [test_re.py]=1 # test check error
    [test_readline.py]=1  # parse error
    [test_robotparser.py]=1  # too long to run before decompiling: 31 secs
    [test_regrtest.py]=1 # test check failures
    [test_resource.py]=1  # probably control flow
    [test_runpy.py]=1  #

    [test_scope.py]=1 # test check failures
    [test_select.py]=1 # test takes too long to run: 11 seconds
    [test_selectors.py]=1 # test takes too long to run before decompiling: 17 seconds
    [test_set.py]=1 # parse error
    [test_shutil.py]=1 # fails on its own
    [test_signal.py]=1 # test takes too long to run before decompiling: 22 seconds
    [test_site.py]=1 # fails on its own
    [test_smtpnet.py]=1 # parse error
    [test_socket.py]=1 # test takes too long to run before decompiling: 23 seconds
    [test_socketserver.py]=1 # parse error
    [test_ssl.py]=1 # parse error
    [test_stat.py]=1 # parse error
    [test_statistics.py]=1 # Probably control flow; unintialized varaible
    [test_strftime.py]=1 # parse error
    [test_strptime.py]=1 # test check failure(s)
    [test_strtod.py]=1 # test check failure(s)
    [test_struct.py]=1 # test check failure(s)
    [test_structmembers.py]=1 # test check failure(s)
    [test_subprocess.py]=1
    [test_support.py]=1 # parse error
    [test_sys.py]=1 # parse error
    [test_sys_setprofile.py]=1 # test check failures
    [test_sys_settrace.py]=1 # parse error

    [test_tarfile.py]=1 # test errors
    [test_tcl.py]=1 # test errors
    [test_telnetlib.py]=1 # test after decompilation runs in more than 15 seconds
    [test_tempfile.py]=1 # parse error
    [test_threading.py]=1 #
    [test_timeout.py]=1 # parse error
    [test_tk.py]=1  # test takes too long to run: 13 seconds
    [test_tokenize.py]=1
    [test_trace.py]=1  # it fails on its own
    [test_traceback.py]=1 # Probably uses comment for testing
    [test_tracemalloc.py]=1 #
    [test_ttk_guionly.py]=1  # implementation specfic and test takes too long to run: 19 seconds
    [test_types.py]=1 # parse error
    [test_typing.py]=1 # parse error

    [test_unicode.py]=1 # unicode thing
    [test_unicodedata.py]=1 # test faiure
    [test_univnewlines.py]=1 # test takes too long to run
    [test_urllib2.py]=1 # test failure (1)
    [test_urllib_response.py]=1 # parse error
    [test_urllib2_localnet.py]=1 #
    [test_urllibnet.py]=1 # test takes too long to run
    [test_urlparse.py]=1 # test errors
    [test_uuid.py]=1 # parse error

    [test_wait3.py]=1 # test errors
    [test_wait4.py]=1 # test errors
    [test_weakref.py]=1 # test takes too long to run
    [test_weakset.py]=1 # parse error
    [test_with.py]=1 # parse error
    [test_winconsoleio.py]=1 # it fails on its own
    [test_winreg.py]=1 # it fails on its own
    [test_winsound.py]=1 # it fails on its own

    [test_xml_etree.py]=1 # parse error
    [test_xmlrpc.py]=1 # parse error

    [test_yield_from.py]=1 # test failures (2)

    [test_zlib.py]=1 # test looping take more than 15 seconds to run
    [test_zipfile.py]=1 # it fails on its own
    [test_zipfile64.py]=1 #
)
# 210 test files, Elapsed time about 16

if (( BATCH )) ; then
    SKIP_TESTS[test_idle.py]=1 # Probably installation specific
    SKIP_TESTS[test_binascii.py]=1 # too long to run
    SKIP_TESTS[test_tix.py]=1 # fails on its own
    SKIP_TESTS[test_ttk_textonly.py]=1 # Installation dependent?

fi
