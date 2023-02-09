Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00F736A
	for <keys@linux.kernel.org>; Thu,  9 Feb 2023 20:41:17 +0000 (UTC)
Received: by mail-qt1-f177.google.com with SMTP id v17so3521644qto.3
        for <keys@linux.kernel.org>; Thu, 09 Feb 2023 12:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nbdvM/SbFkt1mnT4e3FITBRo9DS5xhAfxYA+SNWsf8U=;
        b=XuiExktCrTgL9HaEXDXrFfiFMtayDjYVZbOrkSaM4fghtpke3o1B9DmCxJuQCM8Xre
         JBgTzS6MsMaSD2vPJ1iJ19e3iRDdroP6nXZpRbnHiBpr/loHOjCrsFd2Ho2vAs0dL0kR
         B7IaZ9Hje+KeaIwAv0+ZFEE2+KYvoW0KguFbs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nbdvM/SbFkt1mnT4e3FITBRo9DS5xhAfxYA+SNWsf8U=;
        b=eVZ3hJ7Ms0UlAdFaopvyZPjLzLXhZfmyyaWjJvPVSSPus6pKcc+ul3kvfJxUkzvaXE
         3g/+NctRWP6sAwQjHcM3bLNlbKvqy303kWB2VQIW7X2vcb1OTg9Yic/lh9GmFH4YIjH0
         ySBXvBwwYDccO0IT8HsLPqcpO+Cy8wk3Tyl0w0puLVmAM1gvJ8qXWh4bvHkJNjU8NaPS
         ud++D0+DTo/XeWvTFK/f1elxWCCVxYKuHk4kP7NiACqScQY/a0r7q5DyhhkDM20Lonxb
         UO+UEvBOejR1kmy/JRrucgOk3kPR50whdqQ3MZGTj+StKf0+jnKZD5a+q0jO7P2vhind
         Q8mA==
X-Gm-Message-State: AO0yUKWUC/3Zzo3zgFm52XVgV3oD1JobDlzixadZEmHgeHOshSJ9MeSj
	gy0+3NFj4VqL60RmwjzMikx4aDqhXW/uQzOR
X-Google-Smtp-Source: AK7set8Q1NTRpy2K2MNi3J9SeqUndPhYzzyCHaxGeihyNxIYruh/xma2CL2cChOZFMyXvaxHpd7GIA==
X-Received: by 2002:ac8:7f89:0:b0:3bb:7677:2cb8 with SMTP id z9-20020ac87f89000000b003bb76772cb8mr13809541qtj.33.1675975276602;
        Thu, 09 Feb 2023 12:41:16 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-7.dsl.bell.ca. [209.226.106.7])
        by smtp.gmail.com with ESMTPSA id i25-20020ac871d9000000b003a527d29a41sm1851167qtp.75.2023.02.09.12.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 12:41:15 -0800 (PST)
Date: Thu, 9 Feb 2023 15:41:14 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: David Gibson <david@gibson.dropbear.id.au>
Cc: keys@linux.kernel.org
Subject: Re: New key
Message-ID: <20230209204114.ynajycsawbmjugxj@meerkat.local>
References: <Y+TQqjEzhv0P1vwB@yekko>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Y+TQqjEzhv0P1vwB@yekko>

On Thu, Feb 09, 2023 at 09:53:30PM +1100, David Gibson wrote:
> Accidentally revoked the old one :(

Sorry to hear that, but as there are no signatures on your new key that we
recognize, we cannot add it to the keyring. Would you be able to get more
people to sign your key?

-Konstantin
