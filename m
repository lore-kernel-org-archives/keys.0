Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA8FC64
	for <keys@linux.kernel.org>; Tue, 22 Mar 2022 12:05:37 +0000 (UTC)
Received: by mail-qk1-f172.google.com with SMTP id 1so13775407qke.1
        for <keys@linux.kernel.org>; Tue, 22 Mar 2022 05:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=C6rpI+ixy5r0uaaN4c9VUaBoIWI9L/w7Mmwarp7n5Lo=;
        b=P2Zly62rrt3mrXD1MWnYuxuBBIMmOeR4miqC5m8Y8CgBZnaUU6+DN/BnTn/hO5jqVp
         0vu5fiZHj5jpg8T7hF1bcwbOVQvcDPHvdVGmn1ssiJTPz+gRNIJPiq0d5NB0tqgo0zWJ
         qW9ZxlP2PdYoZtMprgbYhzqTW342AELVJjv8g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=C6rpI+ixy5r0uaaN4c9VUaBoIWI9L/w7Mmwarp7n5Lo=;
        b=zIEm3JNXibKZ4NyDwzMdjhkpx/A2Hmq0hlRNf0PH8ZrnflmnpO4wmTaP8cdywdKevX
         SKDdKdRgpXh/QW9SOxD4ezvTxNIlpZpuwd0ugayu2yHCP3jzg09FzRovXflWmYmCcDUv
         OV2yQmE7KCfjzwmfqHlGRiXYT9elUDNg7hfbKq340IZ2tPgghPvmXp2h56M0ozSboh68
         2M67CLDWsZ5jN7lVjXHaLao2dJVN2C1r8AzaipIZ0HyTY2UMISZTYyf6IblokAJR697e
         fTrOr7Nr1Hi1zRaLt6L1jvkqmEhvAFEzlRDphLCpRiOFsM6sM8BiA0JxsFLg5XJmGrqv
         1yfg==
X-Gm-Message-State: AOAM5320wQOtudFgV5TgV+GO0cZTQR0Ch6n5rldIizDzWb3DXHMrSb5s
	3+gBoonBar/eWvlOIfNEFiRyPQ==
X-Google-Smtp-Source: ABdhPJw3YS0uTdr9ikvpntqCvX5yvOj2TPmKXEjv2vHAuJou4soONX5UoTMMiQpTsZxxeCI85LfERw==
X-Received: by 2002:a05:620a:4622:b0:67d:179a:c043 with SMTP id br34-20020a05620a462200b0067d179ac043mr15054635qkb.480.1647950736433;
        Tue, 22 Mar 2022 05:05:36 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id d189-20020a3768c6000000b0067b248d6b3bsm9101400qkc.46.2022.03.22.05.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Mar 2022 05:05:36 -0700 (PDT)
Date: Tue, 22 Mar 2022 08:05:34 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Theodore Ts'o <tytso@mit.edu>
Cc: keys@linux.kernel.org
Subject: Re: tytso@mit.edu (key expiration update)
Message-ID: <20220322120534.fdtmexikfv7anekp@meerkat.local>
References: <Yjk+ujUawoVR1yGF@mit.edu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Yjk+ujUawoVR1yGF@mit.edu>

On Mon, Mar 21, 2022 at 11:12:58PM -0400, Theodore Ts'o wrote:

Updated, thanks.
