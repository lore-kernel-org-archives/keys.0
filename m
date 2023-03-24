Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4407C6FA1
	for <keys@linux.kernel.org>; Fri, 24 Mar 2023 15:26:53 +0000 (UTC)
Received: by mail-qv1-f44.google.com with SMTP id qh28so1819263qvb.7
        for <keys@linux.kernel.org>; Fri, 24 Mar 2023 08:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1679671612;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qvkrLjnfbKWY54MW0fG9TDPzOxo5PM0rpSG4QFgL/r4=;
        b=WtVgBahPxA5AuyUTXP/7pXF1pmHphrqNLBBbP8E+y+yyiOVFcoZoJk8KXR5thts68D
         Pna6eWfDKmoGw1f6eep50NSr06VPIot2RJ7/Q4GRiXN/bqGwk6LoasKrGg6p7w3Yo9ni
         hD6UT4KjDyf0d6CtmEluw4I9VNU6xq6g3QUBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679671612;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qvkrLjnfbKWY54MW0fG9TDPzOxo5PM0rpSG4QFgL/r4=;
        b=h+EiJA51OsFT8wQvTJXrKBWObKO4O5EpJERtJiooRhHHWWJPsbIOK/oFsOhoreQ+j7
         O2CLc4pbQCiQHH2a9EyZiL6UlPPDwWeJa3/vrnd++VTgxkFJD6x94KK9g/n7yEGKV7KL
         FSPYDx4otlCu8kc2sX3CLgt+jzj8uzO7S5bbn93iMAwimK9mAYXQmWymNkcECStasT3i
         D2dM3dSdAZ5gUrmEpb8WfH4nUzQxW0ABl65bBnpFmf8RQYsSrpyqClXS5aJYomdro/gV
         EtdOLlLfA4zJ/o0ghE/fTqJ4yUUn2gy7Py/9ayklaEFehzKT4ujxbXk62ECdkO6s0p4n
         Kz4g==
X-Gm-Message-State: AAQBX9ceMFgA40jX4Rwv0QK3HxpRfZT28gL1BSDCz3rtqXQb5fupWNuo
	sQ9J/jQf0efHGftPjTVT6eCOFAHGcOzdh7rkBvI=
X-Google-Smtp-Source: AKy350YUaw6BlysDxnPZFbCB61Zda4aZ2muPbN3017Si8HExcghd8qAHWXe603REXGz22uQ7zwNFHg==
X-Received: by 2002:a05:6214:2507:b0:5c4:cacf:9c4e with SMTP id gf7-20020a056214250700b005c4cacf9c4emr5798693qvb.6.1679671611998;
        Fri, 24 Mar 2023 08:26:51 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-7.dsl.bell.ca. [209.226.106.7])
        by smtp.gmail.com with ESMTPSA id x26-20020ac86b5a000000b003bfa2c512e6sm12790414qts.20.2023.03.24.08.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 08:26:51 -0700 (PDT)
Date: Fri, 24 Mar 2023 11:26:50 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: keys@linux.kernel.org
Subject: Re: u.kleine-koenig@pengutronix.de
Message-ID: <yckg7wgk24kjfhpxru2czwmtuj7nmhwgtrxlk5typvixxzqcbn@injhndsqnj7f>
References: <20230318172106.62w6xs4ftzxi2oxp@pengutronix.de>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230318172106.62w6xs4ftzxi2oxp@pengutronix.de>

On Sat, Mar 18, 2023 at 06:21:06PM +0100, Uwe Kleine-König wrote:
> I lost access to my smartcard, so I have a new set of subkeys. The
> master key is still the same. It would be great to get my key updated in
> the kernel-pgpkeys repo.

Sorry for the delay, it's been updated now.

-K
