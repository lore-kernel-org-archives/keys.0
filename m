Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4F0320E
	for <keys@linux.kernel.org>; Tue,  7 Jun 2022 21:29:54 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id h1so15887437plf.11
        for <keys@linux.kernel.org>; Tue, 07 Jun 2022 14:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=YbSTGudT51ePfQhWWNIQKA0I5CvAGQyS6CWL16L9+s4=;
        b=Wj/HI2XwftV0VUzFszcADdnxhb/8OcNqdxl2q0vO7cqzUrS49sW/Dv2YRvO9bNPpVe
         OiI3UkyYwpkLsZScuGJqiNeO5QyabbQiZfKbDSzysvNdLfquIdBT3jV2C9TL44zAyXZh
         RZPGt3KkXzKuUz6xsmV9r+M23nUovfq35TB7Ih15n2iPxyyjCuDoMb0DuzImjDaL7RFP
         ydm/wpX8raaxRacTW/X5RmGojOn/kFslvu51gD/XqVMmCFRx7z49DKDY6mtkTS2dY8AI
         tP9IRsmZU63Zuppqhd9RqpnJ0omiyGpl8tX1IkmHtrWVpIMjkUXTaj9fCT/X7tkbQ4l6
         NQRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=YbSTGudT51ePfQhWWNIQKA0I5CvAGQyS6CWL16L9+s4=;
        b=CsCfQVP3INTx9aQN2J8UUUc1vDVUFUZuX7f0BiAKJeymJC82JKVBLDWI1F8w0iyNJh
         6DplmVjjacx29ShfyK31gcZb6s611+T7XcxjbAhYLYM4n+3g2UZktEpasYQijyEfJ3eC
         juhdzqyvXOcL90iyb6ZEgJjjT+Ltfc+X314PMGbW6MR1b3ySm6z8/TKiVWirVtEh/aBB
         diIreea0uW84Bsq+P2aPJ5G/mHF52vdAhF6OKkmcZdkVsbC0TafYCPnVOZ3KopZWtQIn
         LVUtWHNrAkid1G913Bh7OnkHXq6q/3yrNvvROHpgLnQsd6uto8eli/JVeIRSTjEVqJOb
         FNCA==
X-Gm-Message-State: AOAM533xT0jEJ9bLmYLx9sf+npiOspYka1KmEAuHgvXXSCcA6rqBwOYl
	SdNcUIyVc8C4Z8VseA1cZNY=
X-Google-Smtp-Source: ABdhPJz8tSzK2zmbZ5jNu3+zAnAwLag9wrgd+1JocjlFIWpvHfeCFTnyimOr09R2Yzzve94FlVPIaw==
X-Received: by 2002:a17:90b:4b82:b0:1e6:7853:c004 with SMTP id lr2-20020a17090b4b8200b001e67853c004mr34982190pjb.136.1654637394124;
        Tue, 07 Jun 2022 14:29:54 -0700 (PDT)
Received: from localhost ([2620:10d:c090:400::4:fa4d])
        by smtp.gmail.com with ESMTPSA id r9-20020aa79889000000b0051894243fc5sm8449514pfl.147.2022.06.07.14.29.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:29:53 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Tue, 7 Jun 2022 11:29:52 -1000
From: Tejun Heo <tj@kernel.org>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: tj@kernel.org
Message-ID: <Yp/DUIL78ziDmiaU@slm.duckdns.org>
References: <Yp+ubn2KG/vohRI8@slm.duckdns.org>
 <20220607202824.5nhr4aeii2s4q2ds@meerkat.local>
 <Yp+54z+jHbBrsv49@slm.duckdns.org>
 <20220607212909.knv7zmci737nozh3@meerkat.local>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220607212909.knv7zmci737nozh3@meerkat.local>

On Tue, Jun 07, 2022 at 05:29:09PM -0400, Konstantin Ryabitsev wrote:
> On Tue, Jun 07, 2022 at 10:49:39AM -1000, Tejun Heo wrote:
> > Hello, Konstantin.
> > 
> > On Tue, Jun 07, 2022 at 04:28:24PM -0400, Konstantin Ryabitsev wrote:
> > > On Tue, Jun 07, 2022 at 10:00:46AM -1000, Tejun Heo wrote:
> > > > -----BEGIN PGP PUBLIC KEY BLOCK-----
> > > 
> > > There are no signatures on this key, so we cannot accept it into the keyring.
> > > Did you lose access to your previous key, 19F81DC583926170 ?
> > 
> > Yeah, many years ago. I got signatures from Kyle, Jakub and Paul.
> 
> Thanks, I was able to retrieve the signatures from the ubuntu keyserver.
> Your key has been updated and the old key removed.

Thank you so much!

-- 
tejun
