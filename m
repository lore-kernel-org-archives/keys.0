Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E3A7C
	for <keys@linux.kernel.org>; Tue,  7 Jun 2022 20:00:51 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id e24so16623590pjt.0
        for <keys@linux.kernel.org>; Tue, 07 Jun 2022 13:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=nzlfhuUyRDmEBzim2528Pr5HkK2JtLgAi4rvVSoGtcs=;
        b=VrPN+5OcHHjsnC71gx3Op+g9GTfTQdJPAkykC0C4XwYItHBq6YrHg8J6HsrIzg3b85
         oogNJuy51LwbrFHsX3IgjQAQ+/taWlb53sB2pZ/grRiVhVtJMRe5Ua9fZ61uz2I7dz7w
         o0xVxVamKsz+U8rCBCXmAIqg/h79slPlcaAmAwngEPomoTV2R2QafLJU0Q6grLEQvEMR
         tjkzoNKmJp/Kx6N2uty9x+pRuAVLUfNjZRHUP3DerpNlW/WwwtTdGVlSTgAWElZyl5yg
         mc8SCB3b0cdOzMWHhh1nI4dUjBgpMjBcOQ/Hgs0ToE8gXBGuZHDO9kM4ZbtRUa9UCSjk
         jLyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition;
        bh=nzlfhuUyRDmEBzim2528Pr5HkK2JtLgAi4rvVSoGtcs=;
        b=KMyuk/TH5gvJ6QEdt5h6Gh02VPAHAUI85JhOKnBRbfZwgYhmYb7m6seuzsGfFWwFWR
         TaJCnyT6UghYW2NW0SONBKTwOgzoZbualhDgin+J9R5pLBQ2kKmCScoerfq3LwMj9waS
         FJPEGfjHTWSXZlLiR6l66ZEn+on4qkMDPgqPQiMxlZMH1r6qtkgPpDzeaRtTM9huJGIm
         d5Z2ILEzn6H2Zr1NZmu0qKTE64fAUtWeY2dCLF0ulkHgaHHxOeH6flv5IRxv4rsUynZe
         JjW/XkCQB9wUrLLruHM2Z4TLdgHQQces0aE3skbyZtXUAGr/xaNeyMFUiQSz6OL/14kL
         dUBQ==
X-Gm-Message-State: AOAM5309Du8HcaKsI8gxyrjAJ7YPsQ+CpeZaQwQ6n9vU6tRFc0UIV/Ll
	5dlf9FOb/2Yketap5YO3YOiDYdkXfS0=
X-Google-Smtp-Source: ABdhPJwm0R06O3goBGCF2b/r7+yUKT/BKR/36Pp1DLjwJVbczzpObQMQprIuZVLihsKdwSBlUP0GyA==
X-Received: by 2002:a17:902:e552:b0:163:6a5e:4e08 with SMTP id n18-20020a170902e55200b001636a5e4e08mr30233797plf.130.1654632050539;
        Tue, 07 Jun 2022 13:00:50 -0700 (PDT)
Received: from localhost ([2620:10d:c090:400::4:fa4d])
        by smtp.gmail.com with ESMTPSA id bj1-20020a056a02018100b003fd9e4911f9sm5596063pgb.31.2022.06.07.13.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 13:00:49 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Tue, 7 Jun 2022 10:00:46 -1000
From: Tejun Heo <tj@kernel.org>
To: keys@linux.kernel.org
Subject: tj@kernel.org
Message-ID: <Yp+ubn2KG/vohRI8@slm.duckdns.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
5BgmOT8RMuXH5A==
=fMYC
-----END PGP PUBLIC KEY BLOCK-----
