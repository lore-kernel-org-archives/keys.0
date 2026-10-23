Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.208.46
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792743417;
	b=osBj67h2WRjX8PVIYFOYz58qes8686hrdhelzKVrnTuXSSuTHQDCrhkdzDjvrWs7Vjyw
	 MN+TFRv7NIotxX0MsuFIEP/KuZm2P5HD4/Te1yvrd0Gr7g1oZd4bYHrK7/Sd9GO22dcPB
	 9T8ooa6AJiWk85Qtp4qX/bBGBYGRnS2TaEgfMhkuaFY/Mh7g1+Z+xVl7uC0zuXCc+s2hU
	 qWlLbx+dtlGeSHPf5aI/07xFah5N8kcKDJ4rxyBJTera2t2bU9c2OnZVYijLyhQTwZXhx
	 DEIP3gxWmgrRdg4mFbEJOeR6JtxhsGCddN2uyc5lIIigPctG6C7CW8njfYeh+aXjnLA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792743417;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:References:In-Reply-To:From:Date:X-Gm-Features:
	 Message-ID:Subject:To:Cc:Content-Type:Content-Transfer-Encoding;
	bh=w3AC09FqkK9Bfm/5SsT07rwVzFka2v2SpKr+6nI7k64=;
	b=tZdA3M64NkqE32kYi3OAoMHplLNYwFwy69Kol/F33KWM5vh5zzVVaj0ySmEKSyfreX1J
	 yCT2s6FPKPYPOv0oh17rob8Qc8xTO+S/xKr0DU1ulQHYwvCpkbNksbXadZzxjczytUYvy
	 fU8qeD4Zjtge/lPRB+awdiXkGz59YIUcFdamfiaDbaAlgL93sRCs0jbusevar/HsLacD7
	 Us0xPydn8Xrw1NhAZRlzdlVJRBiPGKfXlAt9ELxDjbaKxjjEEwvlYWkOWP39EMU0Kf8cW
	 Q4H8o+OepOsGarhjBAtU8DX8gVr3emml1CKQC6Za/jCC2uTyfhh5MRSLS2r2GQ9Bgnw==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=flipper.net;
	spf=pass smtp.mailfrom=flipper.net;
	dkim=pass header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b="8ZzuHKg/";
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.208.46
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164ED606A31A
	for <keys@linux.kernel.org>; Fri, 23 Oct 2026 08:16:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 164ED606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=8ZzuHKg/
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6af8620a7d2so672326a12.0
        for <keys@linux.kernel.org>; Fri, 23 Oct 2026 01:16:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792743415; cv=none;
        d=google.com; s=arc-20260327;
        b=e7Icc1Mes5WfEiXzCCXAuKI4YrmY9aVdRVrnCVl+Q0EN9dSmpl7HF19EuSwLPPXO43
         AA+/rdk/mOy1sQ5exhi5OcbD65XVw6vXVyoXyYqsr8BbnKXvrrk+PsyY3A6Wgl0S6Z7/
         MrTsMzk6KdbzY00fSSBp//4oWPgflLCFKOxM1LAHR6CgtaZH7bxw6miXl12rg8NwOl2X
         mZ3zm5PPFEixHyMUkzu+NOTp2zDxXIiTKdzK2Wo5gkMN001peeuGwcWhVXY//MBYkShU
         EvTZXXHEfy7dmQLrbEcj0CIv8xu3BRlthy/Yd17I5PoFUVv37QLtHQdh50GrBa1YBnsP
         6SOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=w3AC09FqkK9Bfm/5SsT07rwVzFka2v2SpKr+6nI7k64=;
        fh=2EsjNTYI3tDRb6SNUp4KK2CcFYWVb9CQHVZhita/9Tg=;
        b=oyzeVqnZoCshvz0KNCotjlGwuVgzmuE0NFrNz2h/IAEc2K3257UozCRzsvYeovEiww
         k4Y/pc+SavCIQLZs2JE7DeuzIfINjgWYqclndhHtJX5w/esrKa0NEImP0z03m/hP8Htk
         TXmIsxz9I3BXHtypx+KAzLvsCarAL79+YaI9lOtAkWVhtVYIV+/auG/m+19uhuFoSMpG
         IyQQUCWiM0wXnD7nOhc+2KhN6RnflyLTc0vXki9kiZqfVxnrsK9lTDdTfzPnb9akloCY
         9wQOJ6n2DrT85JZPQlb0Lc1mmUgynrnPvazr7BJe4zYuPbTUGC+czEhLPTetD8am8nYW
         TMBw==;
        darn=linux.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1792743415; x=1793348215; darn=linux.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=w3AC09FqkK9Bfm/5SsT07rwVzFka2v2SpKr+6nI7k64=;
        b=8ZzuHKg/aTxW+yHzGmaL0CPPyEs0mdTGHJwdIJpiwb3SH5xUWC/TNwE3GeNNUKWJYm
         Fn5N8OJaDGpe1YoTSnZKWuyhHiMPzBcoc1n9PRDBqRtefvOsEoF8x2llTfu3PaKREa1f
         qBTmWRVCbmyTr3wN6dswJry6u14kuKi2REQPG8XcELtwYhAvDpOmRg2639eZqqXO2lKW
         tjXoOEKfoQvY4xOxfFnEZtrbErPD8KDGvKW7WEqXIOUzUr5IpSe/ygPB6c3kDDM2cwdx
         iwN7+WvieKX+2U4q4xMIZJlM9zPHy95ZZazpYRrwne9QsmktwlYpRWgabspJ6LhyqzUZ
         ec5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792743415; x=1793348215;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w3AC09FqkK9Bfm/5SsT07rwVzFka2v2SpKr+6nI7k64=;
        b=c8A+LcSgp+iMN/5YRifMSgUAC48sZzos3fa3yBQq59d0tNUUA6dleZMKnJbPid4/Kp
         0A5Fj7sLTiDU/CXLraxs04b+Pli4sRXOIJQIT0XeRgDCEGXBlTOLX0UmrQmj2M8Z0x3x
         SH7OB8BquWrv4x/3VYQNdBP+NwtouA6uYXdSyGi0oL/aw+M5+vdq5PzmUomijUdQ6asV
         k2iXTb6DwXBhkIhD8zy7wa95x7ktPfpQEwuDWIfF19am8KSUZYo+x9tm7h+PuHJPT0cG
         wg458M6UBXtv0YIYmEDtCjreYYmXrjWtXw7P/kVTe3aON6wB+tbXM2vPs8pia2NRB8+9
         V74Q==
X-Forwarded-Encrypted: i=1; AKwUvBw6xTCcn870D5ReixeJ/qzaalcMAIeAh5LOX+539EcOyTqxDBcvFLglVofored717oanJva@linux.kernel.org
X-Gm-Message-State: AFq9FYLNiIeQxVJQm/iaLljvu5jYmAvqkCXiyjQAGsO/D7sCZdQIa25i
	xwWh1cuZQmZhrBVxsSmvmIZw/xycqwGb7HYS08hgz5kKrF400ivlbMCN+NBn85XldyKbmMktMD2
	dK8x7ykmhU5DD5bpmx5VEQCmBiR2qrxX21Yayk+6Fc/30cvAK9IEozymabz5l
X-Gm-Gg: AYBFou0pMt56jZ1h3WcTBz9oUTQseKd2OGZXxeu+yMXbKdYSgR/hUlbU4cOBj+NA/gr
	9Ng6HkNSOf/DI3037JI6YJewcgaESSIqJy8coMiyP6KsufTLHM6nQvu7u8eDcpWYCCHvVvARZq+
	+wWa40E6Y7zxwY+EFT+AL/F3Bo0n4v1OBhvvtI/qOuxo16ZNmT4faz6k6qNt5+8qKWbKTvGN260
	QrSAxAK3eNMRnPOs1L1J8PAYz0kpMmd8LCbcxSSzFuEifnnKyU961N6VcaYdqnLn5GsKncWMPkX
	5B3SuQOf03sNC+Tf8/vsKfk/E8X2eKAfukxjKl1pBNrb7eOt5Ccbamro4k+tHhQdvYcXmfn60+n
	CMgwdfN1yVmEshr7WYFX2jIc8a/E0vSSbNIgiwZh2QvgRfsE6UQLPENuuCgBAeV+3Aotsiw==
X-Received: by 2002:a17:907:d07:b0:c46:5c4c:7f66 with SMTP id
 a640c23a62f3a-c46a8fe3a5cmr231149866b.14.1792743413928; Fri, 23 Oct 2026
 01:16:53 -0700 (PDT)
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
References: <c3904a796a9db39caadbed7192c5d4e6@alchark-surface.localdomain>
 <ed2bf4b8-a66d-4a9a-864f-8b7cc2c43bc8@kernel.org> <atsPUPMOiSQkfY2y@monoceros>
In-Reply-To: <atsPUPMOiSQkfY2y@monoceros>
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 23 Oct 2026 12:16:43 +0400
X-Gm-Features: AclHuK-aMpLbAXOazp1ulNyqRPmSiNECJTGbt5DG4vSEypL2FLPQNqeio_TJaZc
Message-ID: <CAKTNdwFkzvbcpkSFDtXRCbrCDLVHjFvSWwVh-dU0FbiApvBeWQ@mail.gmail.com>
Subject: Re: alchark@flipper.net
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, keys@linux.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof, Uwe,

On Fri, Oct 23, 2026 at 11:43=E2=80=AFAM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@baylibre.com> wrote:
>
> Hello Krzysztof,
>
> On Fri, Oct 23, 2026 at 09:11:29AM +0200, Krzysztof Kozlowski wrote:
> > On 22/10/2026 16:29, alchark@flipper.net wrote:
> > > -----BEGIN PGP PUBLIC KEY BLOCK-----
> > >
> >
> > This anonymous email address does not exist in the keyring, nor in the
> > maintainers file. Please read the docs about purpose/usage of the
> > keyring first.
>
> The mail had no real name attached, I guess because some howto was
> followed that uses mail(1) or something similar. The certificate has
> proper UIDs and
>
>         linux$ git shortlog --author=3D"Alexey Charkov" -sn v6.0..linus/m=
aster
>             91  Alexey Charkov
>
> which is IMHO good enough.

Indeed, I was following the README.rst from the keyring repository [1]
word for word, and it calls for the key to be sent via mail(1) inline
with no extra arguments. If that's not the expected submission format,
I'm happy to send a patch to update that doc.

The docs encourage a key to be submitted to the keyring if one is in
MAINTAINERS or regularly submits patches to other maintainers, both of
which apply: my gmail.com uid in the submitted key is listed in
MAINTAINERS [2] and has valid signatures putting it into the web of
trust. I also regularly submit patches from my flipper.net uid [3]
which I used to send the key here, and which also carries valid
signatures from people in the keyring.

Note that the docs don't specify which email address the key should be
sent from - perhaps that also warrants an update. However, I don't
believe the "From:" header reveals much about a person's identity; the
signed UIDs in the key do.

[1] https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/tree/README.rst#=
n79
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/MAINTAINERS#n3888
[3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/=
?qt=3Dauthor&q=3Dalchark%40flipper.net

Best regards,
Alexey
