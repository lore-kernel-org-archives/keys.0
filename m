Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9501E2F4B
	for <keys@linux.kernel.org>; Tue,  7 Jun 2022 20:49:42 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id a10so16686707pju.3
        for <keys@linux.kernel.org>; Tue, 07 Jun 2022 13:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=PF56lI3BWWBgIKbEE1wIyPowJ23tirOVhc85VnN5Bzk=;
        b=lAFjnUsbwkLMEzsBjeMb3OwLyELGF1NFi+ml6of4gesN7wGE13DDLN7iD9SG6P32rH
         y6Xqh4Q5+ybpdndD0PYLH/NgdIF94W4L2hms/Td59d4LrWSJUlIlGbPV4jNa7S7kKYhT
         yginIMEsQ3lfmg1Fd0WoRjoOxrjYgY2t41iULhxFdnS7oUM5m/84gYYpqUwsSp0L0m7x
         IchHldvnyFIiYQBp1wWuHi6uv6fQBC0A7Ft5bBvRr/wAEL2Ms8Pfu74QlBewXMdie2qF
         i68OqwgRnP8C/seiZ8WP9/K4IAMnMgope1WmwE8zRuKLNLIG5mLObm0VpewJhG78/3al
         4dUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=PF56lI3BWWBgIKbEE1wIyPowJ23tirOVhc85VnN5Bzk=;
        b=0COjn/C1oeJjUlMA+xPLB0TVbEvzv7Ksa90UR0OEouMDdH/iKPLQ+nnXV9eP00Q6Og
         fb1lucyGGzxtu/VPlLMGf7xQnFdKoVSBofDSmaS2A7sqgfKX/T49XvAxJ3iD2osmtFiO
         a/zhz1dcXFovDWyw7BU/on3Ue8k0y7T1bvqbR0UHFosBYq0HV1hX7+V59MkpKT0h6259
         l70Zki/Ncd0VxXTAnUfnYEwCD/e58vgm9ydr6/EEckKPo9SmsYfMwCGFXBGc0y91DGky
         zC/dliW+Ks1tp4I8jImALPO8uvPINoVJrqU04dRTHXTiqDVGWP3Sf7wkNWsKao7mk+Ia
         XCcg==
X-Gm-Message-State: AOAM531zvHx/c7WWgd81kCUtESgO/Xje+LyHFvCo/9mr8zaTfEDBFVv2
	tY7nBRcAaPs+nigs820reuE=
X-Google-Smtp-Source: ABdhPJx6o0+va/XBskvcH0nbuOTlr8PMFmzOt8Xm6VzIYH32seArqyWwREgbHzoU4U5bZO7aunozPA==
X-Received: by 2002:a17:902:82c4:b0:167:93c0:c955 with SMTP id u4-20020a17090282c400b0016793c0c955mr5191973plz.162.1654634981797;
        Tue, 07 Jun 2022 13:49:41 -0700 (PDT)
Received: from localhost ([2620:10d:c090:400::4:fa4d])
        by smtp.gmail.com with ESMTPSA id iw20-20020a170903045400b001674b0d4e4esm54396plb.241.2022.06.07.13.49.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 13:49:41 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Tue, 7 Jun 2022 10:49:39 -1000
From: Tejun Heo <tj@kernel.org>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: tj@kernel.org
Message-ID: <Yp+54z+jHbBrsv49@slm.duckdns.org>
References: <Yp+ubn2KG/vohRI8@slm.duckdns.org>
 <20220607202824.5nhr4aeii2s4q2ds@meerkat.local>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220607202824.5nhr4aeii2s4q2ds@meerkat.local>

Hello, Konstantin.

On Tue, Jun 07, 2022 at 04:28:24PM -0400, Konstantin Ryabitsev wrote:
> On Tue, Jun 07, 2022 at 10:00:46AM -1000, Tejun Heo wrote:
> > -----BEGIN PGP PUBLIC KEY BLOCK-----
> 
> There are no signatures on this key, so we cannot accept it into the keyring.
> Did you lose access to your previous key, 19F81DC583926170 ?

Yeah, many years ago. I got signatures from Kyle, Jakub and Paul.

  htejun@slm ~ (master)> gpg --list-signatures
  /home/htejun/.gnupg/pubring.kbx
  -------------------------------
  pub   rsa4096 2022-05-25 [SC]
        697C63013E65270255EBC2608744DC1EB26B5A9A
  uid           [ultimate] Tejun Heo <tj@kernel.org>
  sig 3        8744DC1EB26B5A9A 2022-05-25  Tejun Heo <tj@kernel.org>
  sub   rsa4096 2022-05-25 [E]
  sig          8744DC1EB26B5A9A 2022-05-25  Tejun Heo <tj@kernel.org>
  sub   ed25519 2022-06-07 [S]
  sig          8744DC1EB26B5A9A 2022-06-07  Tejun Heo <tj@kernel.org>

  pub   rsa4096 2011-10-17 [SC]
        F402A49CEE3B80C4E4E6C37F460EF99392319BC6
  uid           [ unknown] Kyle McMartin <kyle@mcmartin.ca>
  sig 3        460EF99392319BC6 2012-01-26  Kyle McMartin <kyle@mcmartin.ca>
  uid           [ unknown] Kyle McMartin <kmcmarti@redhat.com>
  sig 3        460EF99392319BC6 2012-02-02  Kyle McMartin <kyle@mcmartin.ca>
  sub   rsa4096 2011-10-17 [E]
  sig          460EF99392319BC6 2011-10-17  Kyle McMartin <kyle@mcmartin.ca>

  pub   rsa4096 2017-12-22 [SC] [expires: 2024-06-10]
        EA33C0F88D6E82620103885731466D6DFE5222BB
  uid           [ unknown] Jakub Kicinski <kuba@kernel.org>
  sig 3        31466D6DFE5222BB 2020-10-12  Jakub Kicinski <kuba@kernel.org>
  uid           [ unknown] Jakub Kicinski <kubakici@wp.pl>
  sig 3        31466D6DFE5222BB 2019-06-12  Jakub Kicinski <kuba@kernel.org>
  sig 3        31466D6DFE5222BB 2017-12-22  Jakub Kicinski <kuba@kernel.org>
  sub   rsa4096 2017-12-22 [E] [expires: 2024-06-10]
  sig          31466D6DFE5222BB 2019-06-12  Jakub Kicinski <kuba@kernel.org>

  pub   rsa4096 2011-10-05 [SC]
        6CAED4ACCF91048AC2A158899EBF12F372D9FB8C
  uid           [ unknown] Paul E. McKenney <paulmck@linux.vnet.ibm.com>
  sig 3        9EBF12F372D9FB8C 2011-10-05  Paul E. McKenney <paulmck@linux.vnet.ibm.com>
  sub   rsa4096 2011-10-05 [E]
  sig          9EBF12F372D9FB8C 2011-10-05  Paul E. McKenney <paulmck@linux.vnet.ibm.com>

and they're also on the ubuntu keyserver

  http://keyserver.ubuntu.com/pks/lookup?search=0x697C63013E65270255EBC2608744DC1EB26B5A9A&fingerprint=on&op=index

My grasp of gpg is really flimsy. Should I get more signatures or do
something differently to send you the signatures?

Thank you.

-- 
tejun
