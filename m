Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE1079D9
	for <keys@linux.kernel.org>; Sun,  4 Feb 2024 07:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707030911; cv=none; b=AZZjW1ieVj88Rq0RoqDhGFR1UWfVdHw/3FP7VpY+0TfkPWxYKA9tkcg4dzVWCmzRIPPQMKAbhdojfvqNAzTWl7aHtSBHrxYo++ZUbfUsBoJEJyYfFOInL42zPHns2kuARfoUCM5CFajw60yPnS0Y+UfIkK4ZOiVSHq6hRYt3QNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707030911; c=relaxed/simple;
	bh=scR+Sp6UE+XxwcVxOCwdz1/OwT06OrTZtTGdEX1Q7dg=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=lFlnaIR1FgApbhqGkf1qICwg8ewNUp2Qi/2zAFNtwLY4rZbDSLM6bwe8pWCXL3JNyh/TKOvO7zeyqAhOOq7OQdCVIFMy6gkBG3Ms4UmM8ygHkm1dNuz57overZMSL90mtdrKLZqWSBFb4hWz9CWntDVfpx+JM+QeVi6HeGWSWDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TmDxuXdW; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TmDxuXdW"
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-42a8b99eaf9so28712971cf.1
        for <keys@linux.kernel.org>; Sat, 03 Feb 2024 23:15:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707030909; x=1707635709; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :feedback-id:from:to:cc:subject:date:message-id:reply-to;
        bh=scR+Sp6UE+XxwcVxOCwdz1/OwT06OrTZtTGdEX1Q7dg=;
        b=TmDxuXdWzADfbjT5J9sA1TgBLWb1qNn+pORQlfZQQLh+tW1BvXf90gexDDP+3yw5gS
         3Ahx7zsppTzIavjpXAq3Njh/S4uJZ8YQlwv3EEbylq2JQEksLxm9WuUmO6HZHggkXz0s
         qYzXgIwpZ18pRMbjvo4pWTY8X12Xab+ji375cNDiV91KWuPsoor1/8VfMjf4vYExiPx2
         7hTqqhXDT2KGdjOz4FxpVybI9eq3Q7F1Lc1+Jf6agwb94s0BFZxEj9v2c6rQMMjyjZJa
         0PMaPd30Q6XZDubfbAeqyP/dBhf+pMJ1NkDPY5my3vg7b2uKElYJ03ZUhePb6qfLhw3B
         Ohdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707030909; x=1707635709;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :feedback-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=scR+Sp6UE+XxwcVxOCwdz1/OwT06OrTZtTGdEX1Q7dg=;
        b=apAw7ceSCPiOP+mo22AN7hV+7sATgalJXgmzRLbG55YC3EphASFAIJaGjDexLg7z7W
         VtupEet1v0LV75Lt11UpL3a+6Yz8Wfpd/bp+9ImpirdbAYyIAH84QNcse/HbNWB1AyPT
         w79trXTeYbxMr7WLncfYhaU3mF/gvaKXttqXO6taYth/gGzcfenSlJJFzRBgKx57oxNO
         /KSheSMczxstfAQVKO4xOnZFKY+cmctOiep5BrTIQ79wmy5FsZHTDT1TouSZgIvflrQV
         CeO4B6OkSE1oUXSrEOgE/3b7omyeE9XO0RWDipYxmri3gt/O9MXSmqREueTdOPCXSnXP
         oivg==
X-Gm-Message-State: AOJu0YxvvArejMdyTcNauq5yHFA1LqPwwE4nvvfA9tAKGzp5FZ6NzjH1
	8dS41yuHiHLUET/3bxP5Ep6cIOG+YXCGcP3RoCcfvoo+FJ6tvGlL
X-Google-Smtp-Source: AGHT+IERrL5uQEqHW7paKTi6Y73S7USz8yO08FZFpwoHaZV7aGRb+xDTq7FLreAAGryZpmhYOP8Arg==
X-Received: by 2002:ac8:7219:0:b0:42c:1eb4:a366 with SMTP id a25-20020ac87219000000b0042c1eb4a366mr566750qtp.44.1707030908639;
        Sat, 03 Feb 2024 23:15:08 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXaSZB347mIHo2rjhgwj+II5R2rSGPJOceGz2kZT0l5U9BXVOidC9+6iI9PJeERqqZPNXZKzEnQLlw1OcfWnRMn
Received: from fauth1-smtp.messagingengine.com (fauth1-smtp.messagingengine.com. [103.168.172.200])
        by smtp.gmail.com with ESMTPSA id a21-20020ac844b5000000b0042bfbdb46f9sm2483327qto.91.2024.02.03.23.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 23:15:06 -0800 (PST)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfauth.nyi.internal (Postfix) with ESMTP id 7B74D1200043;
	Sun,  4 Feb 2024 02:15:06 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sun, 04 Feb 2024 02:15:06 -0500
X-ME-Sender: <xms:ejm_ZbEc7d8piZ5PEawx2wQ7sFhKPMWX4oLwh7m8hfW7ivSt_vtPmg>
    <xme:ejm_ZYVZ3piQ-cTtucZnurxWMYvRGptfo-XD3cby_o3qrfmd9hVS-4aR9_x2BTdDI
    dAhH4YYqvAeiswF8Q>
X-ME-Received: <xmr:ejm_ZdLzFa-T3hDB7FmiL6V49cR9_mOkCdrCBJc7QTOvq4N5DGVomQfTyg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedujedguddtiecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtggusehgtderre
    dttddvnecuhfhrohhmpeeuohhquhhnucfhvghnghcuoegsohhquhhnrdhfvghnghesghhm
    rghilhdrtghomheqnecuggftrfgrthhtvghrnhepvefflefhieevveefhfevgfdvueeuud
    dvfeffleekheeiudehjedugeeiffeffedunecuvehluhhsthgvrhfuihiivgeptdenucfr
    rghrrghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrhhsoh
    hnrghlihhthidqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgvnhhg
    peepghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgv
X-ME-Proxy: <xmx:ejm_ZZHo4muB0H_jhhgGi7qIK0oqLdxsjvh_0_yQvbMEcIFn-UBiQQ>
    <xmx:ejm_ZRUQfyzrsSKx9KLPv66IFY9CWSI6pUp3JVUWnumornaW9l-aEA>
    <xmx:ejm_ZUNTz6RAVnVK5sWHtQ5xiQznNC1jqpgpOm_Eb6OBFs5VM5ojrQ>
    <xmx:ejm_ZQcV_p0w6ivvvvq8Mphuq59TSqt6kYKlS2PEE0GzOfWQX4xuloRM8Ks>
Feedback-ID: iad51458e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Feb 2024 02:15:05 -0500 (EST)
Date: Sat, 3 Feb 2024 23:16:02 -0800
From: Boqun Feng <boqun.feng@gmail.com>
To: keys@linux.kernel.org
Subject: Request to add my key into the kernel developer keyring
Message-ID: <Zb85svHiBS8Hpiwy@tardis>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7LmvZv8rxuwG/Xsg"
Content-Disposition: inline


--7LmvZv8rxuwG/Xsg
Content-Type: multipart/mixed; boundary="NH7V9U1ejvYvaRI/"
Content-Disposition: inline


--NH7V9U1ejvYvaRI/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Could you please add my key into the linux kernel developer keyring?

The key is attached.

Thanks!

Regards,
Boqun

--NH7V9U1ejvYvaRI/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="export.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=R0tZ
-----END PGP PUBLIC KEY BLOCK-----

--NH7V9U1ejvYvaRI/--

--7LmvZv8rxuwG/Xsg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEj5IosQTPz8XU1wRHSXnow7UH+rgFAmW/OasACgkQSXnow7UH
+riRBgf/f9MAcTrCrqFxLahh6QGPMNAJ1Hbb6yaucqVwVg6BGkpauvkeNJk+hbpk
+3QLpEVRGbRCqSyJTPVZvNIerQBVT5PsBlNycEZQ96L1TdsOHkSlwY5Og1FGEbW6
DccN5sCW9OS6HL/VneWoJlum91TcBJGBN0Rx0ScvaXpVr/w0EbgLSHIL/rQ8FDkf
OuHBHTFpeKqO758sclo7OsV4DeHPph6y7MsXesdUGAbORgZehmdGfzniWaRXj+fG
VoBYlhg9EiR/PpB8iz71+/MeZLi+PjVmUJoSpaEusp1JoX2XQm6mjVaEmZKLQC9d
DUZleADPbD1iXU4X8892arKzwszRVA==
=Giuh
-----END PGP SIGNATURE-----

--7LmvZv8rxuwG/Xsg--
