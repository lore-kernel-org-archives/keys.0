Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89FE57462
	for <keys@linux.kernel.org>; Tue, 20 Sep 2022 16:51:34 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id s18so2141395qtx.6
        for <keys@linux.kernel.org>; Tue, 20 Sep 2022 09:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=pH3Yl5YMoA+wR5owuQ24eJXt6bj2WOZcygE0YBBnlzU=;
        b=H4qPql5tuU2mtjbhzpTbosOItzMntDsnd+4YtoguMBl8ykyyUhEBCy1Ma0PKdmssXk
         k9ubnc18xoB3Rp0D7ccxl5Aqq8VFX919hDsBzjLpgvDTP2O8imfYRx4kcT5nc5NQ9zWc
         m2VZIDUPzcd39QcYgmurB3MQnNBuz50akiuxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=pH3Yl5YMoA+wR5owuQ24eJXt6bj2WOZcygE0YBBnlzU=;
        b=hO457MQFzSyy30/Stwv0hvWIWR2SIUWdc9Z68n7iH1ZGUWSPetks9qEpMJHafr20jA
         9ewZSw6lHrdbGoYsL8MN1H7hGcGM3J28kUH8q7Q2degZQgPTCE3oD1IUb1rtoVllAClw
         6iIagMry/+9PYWoYvPvoCmAYbYsEiJgcZu/Q6feogeqBIjVgwENQOxjRdJgPgLFC20bp
         /GjhqR97LAO5pkEOYSzBT3Wn4PqwgRRU59cLfOpEpotTEJ8o8sAecAvmvQ2TeSH30eg5
         mHRYKJA0vqDjD7LgqLvTeI3GmHgUHgl1ANQ/s1wrKYt5NSr43eqLGVafji3XgKa1IptW
         xU0Q==
X-Gm-Message-State: ACrzQf11+IDx7+iJTwhM8BXCJs1ETz/Ko8lsFTPz2k6dJXbpw54iO1oD
	r36xReEjHth5FMM+sJggy/JRng==
X-Google-Smtp-Source: AMsMyM5AO01sd4j05dGcl3GkhEHps9VW4DAU0cH+I0AnqBHWQYZAzENv7JmJVDCOTxmkct+ArDaArg==
X-Received: by 2002:a05:622a:f:b0:35b:a648:5871 with SMTP id x15-20020a05622a000f00b0035ba6485871mr19791104qtw.43.1663692693325;
        Tue, 20 Sep 2022 09:51:33 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id o2-20020ae9f502000000b006b640efe6dasm107849qkg.132.2022.09.20.09.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 09:51:32 -0700 (PDT)
Date: Tue, 20 Sep 2022 12:51:31 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Theodore Ts'o <tytso@mit.edu>
Cc: keys@linux.kernel.org
Subject: Re: tytso@mit.edu (key expiration update)
Message-ID: <20220920165131.umqymg6fus6nvfyn@meerkat.local>
References: <Yyj+3a0l/9G0oJWS@mit.edu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Yyj+3a0l/9G0oJWS@mit.edu>

On Mon, Sep 19, 2022 at 07:44:29PM -0400, Theodore Ts'o wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
